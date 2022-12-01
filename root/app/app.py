from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return '<h1 style="color:blue">Hello!</h1> <h2>This is a simple Flask App based on Hacking-Lab Alpine base image-HL, add your app in /app folder </h2>'


