from flask import Flask,render_template,redirect
import sqlalchemy

#__name__ is the name of the file
app = Flask(__name__)

@app.route("/squat")
def add():
    print("Lets Calculate their squat")

@app.route("/bench")
def subtract():
    print("Bench")

@app.route("/deadlift")
def divide():
    print("Deadlift")

