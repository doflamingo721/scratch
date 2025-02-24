from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from Backend 1!"

app.run(host="0.0.0.0", port=8081)

