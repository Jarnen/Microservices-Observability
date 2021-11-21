import logging

import requests
from flask import Flask, render_template, request, jsonify
# for tracing
from jaeger_client import Config
from flask_opentracing import FlaskTracing
# for logging
from datetime import datetime
import logging
logging.basicConfig(level=logging.DEBUG, format='%(levelname)s: %(name)s: %(message)s')

# for metrics
from prometheus_flask_exporter import PrometheusMetrics

import pymongo
from flask_pymongo import PyMongo

app = Flask(__name__)

# for metrics
metrics = PrometheusMetrics(app)
# static information as metric
metrics.info('app_info', 'Backend-app info', version='1.8')
##
# for tracing
config = Config(
    config={
        'sampler':
            {'type': 'const',
             'param': 1},
        'logging': True,
        'reporter_batch_size': 1, },
    service_name="backend-app",
    validate=True,
    # metrics_factory=PrometheusMetrics(service_name_label='backend-app'),
)
jaeger_tracer = config.initialize_tracer()
flask_tracer = FlaskTracing(jaeger_tracer, True, app)
###

app.config['MONGO_DBNAME'] = 'example-mongodb'
app.config['MONGO_URI'] = 'mongodb://example-mongodb-svc.default.svc.cluster.local:27017/example-mongodb'

mongo = PyMongo(app)


@app.route('/')
def homepage():
    with flask_tracer.start_span('Homepage') as span:
        span.log_kv({'event': 'Home page', 'life': 42})
    today = datetime.now().strftime("%d/%m/%Y, %H:%M:%S")
    app.logger.info('%s, Homepage retrieved!', today)
    return "Hello World"


@app.route('/api')
def my_api():
    with flask_tracer.start_span('API') as span:
        answer = "something"
        span.log_kv({'event': 'Api Route', 'life': 42})
    today = datetime.now().strftime("%d/%m/%Y, %H:%M:%S")
    app.logger.info('%s, My api retrieved!', today)
    return jsonify(repsonse=answer)


@app.route('/star', methods=['POST'])
def add_star():
    today = datetime.now().strftime("%d/%m/%Y, %H:%M:%S")
    with flask_tracer.start_span('Star') as span:
        star = mongo.db.stars
        name = request.json['name']
        distance = request.json['distance']
        star_id = star.insert({'name': name, 'distance': distance})
        with flask_tracer.start_span('star-child-pan', child_of=span) as child_span:
            try:
                new_star = star.find_one({'_id': star_id})
                result = {'name': new_star['name'], 'distance': new_star['distance']}
                child_span.log_kv({'event': 'Add star'})
                app.logger.info('%s, Add star success!', today)
            except:
                child_span.log_kv({'event': 'Fail to add star'})
                app.logger.info('%s, Add star failed!', today)
                result = 'failed'
            return jsonify({'result': result})


# for metrics
metrics.register_default(
    metrics.counter(
        'by_path_counter', 'Request count by request paths',
        labels={'path': lambda: request.path}
    )
)

if __name__ == "__main__":
    app.run()
