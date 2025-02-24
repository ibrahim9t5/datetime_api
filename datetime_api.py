from flask import Flask
from datetime import datetime

app = Flask(__name__)

@app.route('/')                                     # GET is a default method so not adding it here

def get_datetime():
    now = datetime.now()
    return now.strftime("%Y-%m-%d %I:%M:%S %p")     # for custom format

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)