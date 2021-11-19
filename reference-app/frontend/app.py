from flask import Flask, render_template, request
### for tracing
from jaeger_client import Config
from flask_opentracing import FlaskTracing

# for metrics
from prometheus_flask_exporter import PrometheusMetrics

app = Flask(__name__)

# for metrics
metrics = PrometheusMetrics(app)
# static information as metric
metrics.info('app_info', 'Frontend-app info', version='1.3')
##
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


# for metrics
metrics.register_default(
    metrics.counter(
        'by_path_counter', 'Request count by request paths',
        labels={'path': lambda: request.path}
    )
)


if __name__ == "__main__":
    app.run()