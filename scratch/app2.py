from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from Backend 2!"

app.run(host="0.0.0.0", port=8082)
