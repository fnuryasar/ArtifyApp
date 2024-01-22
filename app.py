from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
import pymysql
import mysql.connector
pymysql.install_as_MySQLdb()
from models import db, Gallery, Exhibition, Artwork, User, Visitor, Artist
from flask import Flask, render_template, redirect, url_for, request, session

app = Flask(__name__)
app.secret_key = 'some_random_secret_key'
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:bateman35@localhost/artify'
db.init_app(app)

connection = mysql.connector.connect(host='localhost',
                                             database='Artify',
                                             user='root',
                                             password='bateman35') 

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

@app.route('/logout')
def logout():
    session.clear()  # Clear the user's session
    return redirect(url_for('welcome'))

@app.route('/profile')
def profile():
    if not session.get('logged_in'):
        return redirect(url_for('login'))

    user_id = session.get('user_id')
    user = User.query.get_or_404(user_id)

    user.is_artist = check_user_id(user_id) 

    cursor = connection.cursor()

    if user.is_artist:
        cursor.execute("""
            SELECT Artwork.* FROM Artwork
            JOIN Create ON Artwork.ArtworkID = Create.ArtworkID
            JOIN Artist ON Create.ArtistID = Artist.ArtistID
            WHERE Create.ArtistID = %s
        """, (user_id,))
        artworks = cursor.fetchall()
    else:
        cursor.execute("SELECT * FROM Artwork WHERE VisitorID = %s", (user_id,))
        purchased_artworks = cursor.fetchall()
    
    cursor.close()

    if user.is_artist:  # Assuming you have a method to determine if user is an artist
        artist = Artist.query.get(user_id)
        #artworks = Artwork.query.filter_by(ArtistId=user_id).all()
        return render_template('profile_artist.html', artist=artist, artworks=artworks)
    else:
        visitor = Visitor.query.get(user_id)
        #purchased_artworks = Artwork.query.filter_by(VisitorID=user_id).all()
        return render_template('profile_visitor.html', visitor=visitor, purchased_artworks=purchased_artworks)

def check_user_id(user_id):
    query_visitor = "SELECT VisitorID FROM Visitor"
    query_artist = "SELECT ArtistID FROM Artist"
    
    cursor = connection.cursor()
    cursor.execute(query_visitor)
    visitor_ids = [row[0] for row in cursor.fetchall()]

    cursor.execute(query_artist)
    artist_ids = [row[0] for row in cursor.fetchall()]

    if user_id in artist_ids:
        return True
    else:
        return False 

    cursor.close()

@app.route('/profile/update', methods=['GET', 'POST'])
def update_profile():
    # Implement logic to update user profile
    pass

@app.route('/upload_artwork', methods=['GET', 'POST'])
def upload_artwork():
    # Implement logic for artist to upload new artwork
    pass

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        user = User.query.filter_by(UserName=username, UPassword=password).first()
        if user:
            session['logged_in'] = True
            session['user_id'] = user.UId
            return redirect(url_for('profile'))
        else:
            return 'Login Failed'
    return render_template('login.html')

@app.route('/signup', methods=['GET', 'POST'])
def signup():
    if request.method == 'POST':
        user_type = request.form['user_type']
        new_user = User(
            FullName=request.form['fullname'],
            UserName=request.form['username'],
            UPassword=request.form['password']
            # Other common fields
        )
        db.session.add(new_user)
        db.session.commit()

        if user_type == 'Visitor':
            new_visitor = Visitor(
                VisitorID=new_user.UId,
                PhoneNumber=request.form['phone'],
                Email=request.form['email'],
                DigitalWallet=request.form['wallet'],
                Address=request.form['address']
                # Other visitor-specific fields
            )
            db.session.add(new_visitor)
        elif user_type == 'Artist':
            new_artist = Artist(
                ArtistID=new_user.UId,
                Bio=request.form['bio'],
                ArtistStyle=request.form['style']
                # Other artist-specific fields
            )
            db.session.add(new_artist)

        db.session.commit()
        return redirect(url_for('login'))

    return render_template('signup.html')


if __name__ == '__main__':
    app.run(debug=True)
