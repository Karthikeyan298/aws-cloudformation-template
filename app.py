from flask import Flask
import os
import redis

redis_host = os.environ.get("REDIS_HOST", "127.0.0.1")
redis_port = os.environ.get("REDIS_port", "6379")

try:
    r = redis.Redis(host=redis_host, port=redis_port)
except Exception as e:
    print("Connection failed: {}".format(e))

app = Flask(__name__)


@app.route('/')
def hello():
    return "Hello World!"

@app.route('/setdata/<key>/<value>')
def setdata(key, value):
    r.set(key, value)
    return "success"

@app.route('/getdata/<key>')
def getdata(key):
    return r.get(key)

if __name__ == '__main__':
    app.run()