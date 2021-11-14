import logging

import requests
from flask import Flask, render_template, request, jsonify
### for tracing
from jaeger_client import Config
from flask_opentracing import FlaskTracing


import pymongo
from flask_pymongo import PyMongo

app = Flask(__name__)

# for tracing
config = Config(
    config={
        'sampler':
        {'type': 'const',
         'param': 1},
                        'logging': True,
                        'reporter_batch_size': 1,},
                        service_name="service")
jaeger_tracer = config.initialize_tracer()
tracing = FlaskTracing(jaeger_tracer, True, app)
###

app.config['MONGO_DBNAME'] = 'example-mongodb'
app.config['MONGO_URI'] = 'mongodb://example-mongodb-svc.default.svc.cluster.local:27017/example-mongodb'

mongo = PyMongo(app)

@app.route('/')
def homepage():
    return "Hello World"


# @app.route('/')
# def homepage():
#     # return render_template("main.html")
#     with tracing.start_span('get-python-jobs') as span:
#         homepages = []
#         res = requests.get('https://jobs.github.com/positions.json?description=python')
#         span.set_tag('first-tag', len(res.json()))
#         for result in res.json():
#             try:
#                 homepages.append(requests.get(result['company_url']))
#             except:
#                 return "Unable to get site for %s" % result['company']
#
#     return jsonify(homepages)


@app.route('/api')
def my_api():
    answer = "something"
    return jsonify(repsonse=answer)


@app.route('/star', methods=['POST'])
def add_star():
  star = mongo.db.stars
  name = request.json['name']
  distance = request.json['distance']
  star_id = star.insert({'name': name, 'distance': distance})
  new_star = star.find_one({'_id': star_id })
  output = {'name' : new_star['name'], 'distance' : new_star['distance']}
  return jsonify({'result' : output})


if __name__ == "__main__":
    app.run()
