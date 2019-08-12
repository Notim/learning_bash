#!/usr/bin/python
from flask import Flask, render_template

app = Flask(__name__)


@app.route('/')
def root():  

    return render_template('home.html'), 200


if __name__ == '__main__':
    app.run(
        host='0.0.0.0',
        port=5000,  
        debug=True
    )
