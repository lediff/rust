from flask import Flask
import logging as logger
logger.basicConfig(level="DEBUG")

app = Flask(__name__)

@app.route('/')

def index():
	return '<h1>Login</h1>'