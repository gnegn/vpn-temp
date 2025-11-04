from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route("/public")
def public():
    return jsonify(message="Hello from Flask on AWS!"), 200

@app.route("/private")
def private():
    if request.remote_addr not in ("127.0.0.1", "::1"):
        return jsonify(error="Access denied"), 403
    return jsonify(secret="This is a private endpoint."), 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
