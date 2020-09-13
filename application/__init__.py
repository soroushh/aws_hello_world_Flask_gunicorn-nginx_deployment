from flask import Flask

app = Flask(__name__)
app.config['SECRET_KEY'] == 'abc'


@app.route('/')
def hello_world():
    """."""
    return 'hello world'


@app.route('/second')
def second():
    """."""
    return 'This is the second endpoint.'



