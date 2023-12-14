from flask import Flask

app = Flask(__name__)

@app.route('/welcome/<nama>')
def welcome(nama):
    if nama:
        return f"Selamat datang {nama}!", 200

# Custom error handler for 404 Not Found
@app.errorhandler(404)
def page_not_found(e):
    return "Anonymous", 404

if __name__ == '__main__':
    app.run(debug=True, port=5000)

