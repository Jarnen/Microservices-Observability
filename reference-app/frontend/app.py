from flask import Flask, render_template, request
### for tracing
from jaeger_client import Config
from flask_opentracing import FlaskTracing

app = Flask(__name__)

# for tracing
config = Config(
    config={
        'sampler':
        {'type': 'const',
         'param': 1},
                        'logging': True,
                        'reporter_batch_size': 1,},
                        service_name="frontend-app")
jaeger_tracer = config.initialize_tracer()
tracing = FlaskTracing(jaeger_tracer, True, app)
###


@app.route('/')
def homepage():
    return render_template("main.html")


if __name__ == "__main__":
    app.run()