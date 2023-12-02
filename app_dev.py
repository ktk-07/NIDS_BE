from flask import Flask,render_template,redirect
import sqlalchemy

def create_app():
    app = Flask(__name__,  instance_relative_config=True)

    @app.route("/squat", methods=["POST"])
    def add():
        print("Lets Calculate their squat")

    @app.route("/bench", methods=["POST"])
    def subtract():
        print("Bench")

    @app.route("/deadlift", methods=["POST"])
    def divide():
        print("Deadlift")

    return app

if __name__ == "__main__" :
    print("App in development")
    create_app().run()
