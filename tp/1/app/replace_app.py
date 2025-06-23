from os import getenv
from flask import Flask, jsonify, abort, url_for

LISTEN_PORT = getenv("LISTEN_PORT", 8000)

app = Flask(__name__)

@app.route('/', methods=['GET'])
def index():

    return jsonify({
        "message": "coucou ",
    })

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=LISTEN_PORT)

