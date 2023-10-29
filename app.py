import os
from flask import Flask, render_template

app = Flask(__name__)


@app.route('/')
def hello_ICS3C():
    target = os.environ.get('TARGET', 'WE ARE NOW ON KUBERNETES.')
    return render_template('index.html', target=target)


if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=int(os.environ.get('FLASK_PORT', 980)))
