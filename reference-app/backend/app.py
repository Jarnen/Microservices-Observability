import logging

import requests
from flask import Flask, render_template, request, jsonify
# for tracing
from jaeger_client import Config
from flask_opentracing import FlaskTracing
from flask_opentracing import FlaskTracer
from opentracing import tracer
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

app.config['MONGO_DBNAME'] = 'example-mongodb'
app.config['MONGO_URI'] = 'mongodb://example-mongodb-svc.default.svc.cluster.local:27017/example-mongodb'

mongo = PyMongo(app)


@app.route('/')
def homepage():
    home = 'hellow world'
    parent_span = flask_tracer.get_span()
    with tracer.start_span('get-python-jobs', child_of=parent_span) as span:
        span.set_tag("home", home)
    return home


@app.route('/api')
def my_api():
    answer = "something"
    parent_span = flask_tracer.get_span()
    with tracer.start_span('get-python-jobs', child_of=parent_span) as span:
        span.set_tag("my-api", answer)
    return jsonify(repsonse=answer)


@app.route('/star', methods=['POST'])
def add_star(content):
    star = mongo.db.stars
    parent_span = flask_tracer.get_span()
    with tracer.start_span('get-python-jobs', child_of=parent_span) as span:
        span.set_tag("star", star)
        name = request.json['name']
        distance = request.json['distance']
        star_id = star.insert({'name': name, 'distance': distance})
        new_star = star.find_one({'_id': star_id})
        output = {'name': new_star['name'], 'distance': new_star['distance']}
        span.set_tag('result', jsonify({'result': output}) )
    return jsonify({'result': output})


def initialize_trace():
  config = Config(
      config={
          'sampler': {'type': 'const', 'param': 1}
      },
      service_name='backend-app')
  return config.initialize_tracer() # also sets opentracing.tracer


flask_tracer = FlaskTracer(initialize_trace, True, app)

# for metrics
metrics.register_default(
    metrics.counter(
        'by_path_counter', 'Request count by request paths',
        labels={'path': lambda: request.path}
    )
)


if __name__ == "__main__":
    app.run()
