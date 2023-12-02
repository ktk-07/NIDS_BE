from flask import Flask,render_template,redirect
from waitress import serve

app = Flask(__name__, instance_relative_config=True)

@app.route("/squat", methods=["POST"])
def add():
    print("Lets Calculate their squat")

@app.route("/bench", methods=["POST"])
def subtract():
    print("Bench")

@app.route("/deadlift", methods=["POST"])
def divide():
    print("Deadlift")

if __name__ == "__main__":
    print("Started Serving the api")
    serve(app, host="0.0.0.0", port=7777, threads=3)
    print("The api server Is Stopped")