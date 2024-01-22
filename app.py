from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
import pymysql
import mysql.connector
pymysql.install_as_MySQLdb()
from models import db, Gallery, Exhibition, Artwork, User, Visitor, Artist
from flask import Flask, render_template, redirect, url_for, request, session

app = Flask(__name__)
app.secret_key = 'some_random_secret_key'
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:admin@localhost/artify'
db.init_app(app)

connection = mysql.connector.connect(host='localhost',
                                             database='Artify',
                                             user='root',
                                             password='admin') 
##### END APP CONFIGURATION #####


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
    artworks_data = []
    artworks = Artwork.query.all()

    for artwork in artworks:
        artwork_id = artwork.ArtworkID
        artwork_title = artwork.ATitle
        average_rating = Review.query.with_entities(func.round(func.avg(Review.Rating),1)).filter(Review.ArtworkID == artwork_id).scalar()
        # comments = db.session.query(User.UserName, Review_Comments.Comment).join(Review_Comments, User.UId == Review_Comments.UserID).filter(Review_Comments.ArtworkID == artwork_id).all()
        comments = db.session.query(Review_Comments, User, Artist).join(User, Review_Comments.UserID == User.UId).outerjoin(Artist, User.UId == Artist.ArtistId).filter(Review_Comments.ArtworkID == artwork.ArtworkID).all()

        formatted_comments = []
        for comment, user, artist in comments:
            is_artist = artist is not None

            comment_data = {
                'user_name': user.FullName,
                'comment': comment.Comment,
                'is_artist': is_artist
            }

            # Include artist ID if the commenter is an artist
            if is_artist:
                comment_data['artist_id'] = artist.ArtistId

            formatted_comments.append(comment_data)
        artworks_data.append({
            'artwork_id': artwork_id,
            'artwork_title': artwork_title,
            'average_rating': average_rating,
            'comments': formatted_comments
        })
    
    basket_ids = session.get('basket', [])
    basket_artwork_details = get_basket_artwork_details(basket_ids)
    total_price = sum(artwork['Price'] for artwork in basket_artwork_details)


    return render_template('artworks.html', 
                           artworks=artworks_data, 
                           basket_artworks=basket_artwork_details, 
                           total_price=total_price)
## Artist Details Page:
# SELECT FullName, UserName, Style, Bio FROM Artist, User WHERE Artist.ArtistID = artist_id AND User.UId = artist_id;
# SELECT ATitle, AStyle, Image, Description FROM Artwork WHERE ArtworkID IN (SELECT ArtworkID FROM CreateArt WHERE ArtistID = artist_id);
@app.route('/artist/<int:artist_id>')
def artist_details(artist_id):
    artist = Artist.query.join(User, Artist.ArtistId == User.UId).filter(Artist.ArtistId == artist_id).first()
    artworks = Artwork.query.join(CreateArt).filter(CreateArt.c.ArtistID == artist_id).all()

    if not artist:
        return "Artist not found", 404

    return render_template('artist_details.html', artist=artist, artworks=artworks)

## Artwork Details Page:
# SELECT * FROM Artwork WHERE ArtworkID = artwork_id;
# If IsSold = 1, SELECT UserName, SaleDate FROM User,Artwork WHERE UId = VisitorID AND ArtworkID = artwork_id); 
# If IsSold = 0, Add to Basket Button
# SELECT GName FROM Gallery WHERE GalleryID = (SELECT Gallery FROM Artwork WHERE ArtworkID = artwork_id);
# SELECT UserName FROM User WHERE UId IN (SELECT UId FROM CreateArt WHERE ArtworkID = artwork_id); 
# SELECT ETitle FROM Exhibition WHERE ExhibitionID IN (SELECT ExhibitionID FROM Display WHERE ArtworkID = artwork_id); 
@app.route('/artwork/<int:artwork_id>')
def artwork_details(artwork_id):
    artwork = Artwork.query.get_or_404(artwork_id)
    return render_template('artwork_details.html', artwork=artwork)


@app.route('/add_to_basket', methods=['POST'])
def add_to_basket():
    artwork_id = request.form.get('artwork_id')
    if 'basket' not in session:
        session['basket'] = []

    # Check if the artwork_id is not already in the basket
    if artwork_id not in session['basket']:
        session['basket'].append(artwork_id)

    # Mark the session as modified
    session.modified = True

    return redirect(url_for('artworks'))


@app.route('/add_to_basket', methods=['POST'])
def add_to_basket():
    artwork_id = request.form.get('artwork_id')
    if 'basket' not in session:
        session['basket'] = []

    # Check if the artwork_id is not already in the basket
    if artwork_id not in session['basket']:
        session['basket'].append(artwork_id)

    # Mark the session as modified
    session.modified = True

    return redirect(url_for('artworks'))


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
    cursor.execute("UPDATE Artwork SET VisitorID = 3, IsSold = 1 WHERE ArtworkID = 5")
    cursor.close()

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
        cursor.execute("SELECT Artwork.* FROM Artwork WHERE VisitorID = %s", (user_id,))
        purchased_artworks = cursor.fetchall()
    
    cursor.close()
    print(purchased_artworks)

    if user.is_artist:  # Assuming you have a method to determine if user is an artist
        artist = Artist.query.get(user_id)
        #artworks = Artwork.query.filter_by(ArtistId=user_id).all()
        return render_template('profile_artist.html', user=user, artworks=artworks)
    else:
        visitor = Visitor.query.get(user_id)
        #purchased_artworks = Artwork.query.filter_by(VisitorID=user_id).all()
        return render_template('profile_visitor.html', user=user, visitor=visitor, purchased_artworks=purchased_artworks)

    

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

@app.route('/execute-python-function', methods=['POST'])
def execute_python_function():
    user_id = session.get('user_id')
    basketed_artwork_ids = session.get('basket', [])
    
    result = your_python_function(user_id)  
    
    return result

# Define your Python function
def your_python_function(user_id):
    # Your Python function logic here
    cursor = connection.cursor()
    query = """
    SELECT Artwork.ATitle, COUNT(*)
    FROM Artwork , Visitor 
    WHERE Visitor.VisitorID = %s  
        AND Artwork.VisitorID = Visitor.VisitorID
    GROUP BY Artwork.ArtworkID
    ORDER BY COUNT(*) DESC
    """
    cursor.execute(query, (user_id,))
    result = cursor.fetchone()
    #print(type(result))
    result = result[0]
    #print(type(result))
    cursor.close()
    return result

@app.route('/view_basket')
def view_basket():
    if 'logged_in' not in session or not session['logged_in']:
        return redirect(url_for('login'))

    basket_artwork_details = get_basket_artwork_details(session.get('basket', []))
    total_price = sum(artwork['Price'] for artwork in basket_artwork_details)

    return render_template('basket.html', basket_artworks=basket_artwork_details, total_price=total_price)

def get_basket_artwork_details(basket_ids):
    if not basket_ids:
        return []

    query = """
SELECT ATitle, Price FROM Artwork
WHERE ArtworkID IN (%s)
""" % ','.join(['%s'] * len(basket_ids))


    cursor = connection.cursor(dictionary=True)
    cursor.execute(query, basket_ids)
    artworks = cursor.fetchall()
    cursor.close()
    return artworks


if __name__ == '__main__':
    app.run(debug=True)
