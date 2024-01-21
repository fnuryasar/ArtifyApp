from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
import pymysql
pymysql.install_as_MySQLdb()
from models import db, Gallery, Exhibition, Artwork, User


app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:merhabalar@localhost/artify'
db.init_app(app)

@app.route('/')
def welcome():
    return render_template('welcome.html')

@app.route('/galleries')
def galleries():
    # Fetch gallery data from the database
    galleries = Gallery.query.all()
    return render_template('gallery.html', galleries=galleries)

@app.route('/exhibitions')
def exhibitions():
    # Fetch exhibition data from database
    exhibitions = Exhibition.query.all()
    return render_template('exhibition.html', exhibitions=exhibitions)

@app.route('/artworks')
def artworks():
    all_artworks = Artwork.query.all()
    return render_template('artworks.html', artworks=all_artworks)

@app.route('/artwork/<int:artwork_id>')
def artwork_details(artwork_id):
    artwork = Artwork.query.get_or_404(artwork_id)
    return render_template('artwork_details.html', artwork=artwork)


if __name__ == '__main__':
    app.run(debug=True)
