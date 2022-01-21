from flask import Flask, render_template
import random
import requests

app = Flask(__name__)

@app.route('/')
def index():
    # Generate a random funny gif url
    getURL = "https://api.giphy.com/v1/gifs/random?api_key=wkIMB9zIgDLEWPEvfDhf71opFk3HOXyQ&tag=funny"
    response = requests.get(getURL)
    data = response.json()
    try:
        url = data["data"]["images"]["original"]["url"]
    except TypeError:
        url = "No matches found"

    return render_template('index.html', url=url)

if __name__ == "__main__":
    app.run(host="0.0.0.0")