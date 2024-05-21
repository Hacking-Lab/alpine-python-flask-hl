from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return '<h1 style="color:blue">Hello!</h1> <h2>This is a simple Python3 Flask App, add your app in the /app folder</h2>'


