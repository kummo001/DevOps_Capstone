from flask import Flask
 
app = Flask(__name__)
 
@app.route("/hello", methods=["GET"])
def hello():
    return 'Hello World. My name is MinhNHA'
    
if  __name__ == '__main__':
    app.run(host="0.0.0.0", port=80, debug=True)