from flask import Flask, jsonify, request
import os

app = Flask(__name__)


@app.route('/status', methods=['GET'])
def status():
    out = "OK"
    return out


@app.route('/devices', methods=['GET'])
def devices():
    out = os.popen('/usr/local/bin/temper-poll -p').read()
    print("devices(): ", str(out))
    return str(out)


@app.route('/', methods=['GET'])
def temper():
    out = os.popen('/usr/local/bin/temper-poll -f -s 0').read()
    print("temper(): ", str(out))
    return str(out)


if __name__ == "__main__":
    app.run(debug=True)
