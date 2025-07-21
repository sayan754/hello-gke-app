from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    pod_name = os.environ.get('HOSTNAME', 'unknown')
    return f"<h1>Hello from GKE!</h1><p>I am running inside Pod: {pod_name}</p>"
