from flask import Flask
from app import create_app

app = create_app()

#from .core import app_setup



if __name__ == "__main__":
    # Only for debugging while developing
    app.run(host="0.0.0.0", debug=True)
