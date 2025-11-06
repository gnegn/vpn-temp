from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route("/public")
def public():
    return jsonify(message="Hello from Flask on AWS!"), 200

@app.route("/private")
def private():
    return jsonify(secret="This is a private endpoint."), 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
