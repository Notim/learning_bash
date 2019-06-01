#!/usr/bin/python
from flask import Flask

app = Flask(__name__)


@app.route('/')
def root():  
    html = ""
    html +="<h1>Aplicacao Flask Aqui oh!!!</h1>"
    html +="<img src='https://cdn-images-1.medium.com/max/1600/1*wigcg2cOMdiqq3y2Qrgk2w.png' />"
    return html, 200

if __name__ == '__main__':
    app.run(
        host='0.0.0.0',
        port=5000,  
        debug=True
    )
