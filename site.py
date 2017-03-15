from flask import Flask
site = Flask(__name__)

@site.route("/")
def coming_soon():
    return "<h1>Coming Soon</h1>"

if __name__ == "__main__":
    site.run(host='0.0.0.0')

