from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class User(db.Model):
    __tablename__ = 'user'
    UId = db.Column(db.Integer, primary_key=True)
    FullName = db.Column(db.String(50))
    UserName = db.Column(db.String(10), unique=True)
    UPassword = db.Column(db.String(8))

    # Relationships
    artworks = db.relationship('Artwork', secondary='review', back_populates='users')
    comments = db.relationship('Review_Comments', backref='user')
    visitors = db.relationship('Visitor', backref='user', uselist=False)

class Artist(db.Model):
    __tablename__ = 'artist'
    ArtistId = db.Column(db.Integer, db.ForeignKey('user.UId'), primary_key=True)
    Bio = db.Column(db.String(500))
    ArtistStyle = db.Column(db.String(50))

    # Relationships
    created_artworks = db.relationship('Artwork', secondary='create_art', back_populates='artists')

class Artwork(db.Model):
    __tablename__ = 'artwork'
    ArtworkID = db.Column(db.Integer, primary_key=True)
    ATitle = db.Column(db.String(100))
    AStyle = db.Column(db.String(50))
    AType = db.Column(db.String(50))
    Image = db.Column(db.LargeBinary)
    Description = db.Column(db.String(500))
    IsSold = db.Column(db.Boolean)
    VisitorID = db.Column(db.Integer, db.ForeignKey('visitor.VisitorID'))
    SaleDate = db.Column(db.Date)
    Price = db.Column(db.Float)
    Gallery = db.Column(db.Integer, db.ForeignKey('gallery.GalleryID'))

    # Relationships
    users = db.relationship('User', secondary='review', back_populates='artworks')
    artists = db.relationship('Artist', secondary='create_art', back_populates='created_artworks')
    galleries = db.relationship('Gallery', backref='artworks')
    exhibitions = db.relationship('Exhibition', secondary='display', back_populates='artworks')

class Gallery(db.Model):
    __tablename__ = 'gallery'
    GalleryID = db.Column(db.Integer, primary_key=True)
    GName = db.Column(db.String(50))
    GAddress = db.Column(db.String(500))

    # Relationships
    closed_days = db.relationship('ClosedDays', backref='gallery', cascade="all, delete")
    exhibitions = db.relationship('Exhibition', secondary='schedule', back_populates='galleries')

class Exhibition(db.Model):
    __tablename__ = 'exhibition'
    ExhibitionID = db.Column(db.Integer, primary_key=True)
    ETitle = db.Column(db.String(50))
    StartDate = db.Column(db.Date)
    EndDate = db.Column(db.Date)
    Location = db.Column(db.String(50))

    # Relationships
    galleries = db.relationship('Gallery', secondary='schedule', back_populates='exhibitions')
    artworks = db.relationship('Artwork', secondary='display', back_populates='exhibitions')

class Visitor(db.Model):
    __tablename__ = 'visitor'
    VisitorID = db.Column(db.Integer, db.ForeignKey('user.UId'), primary_key=True)
    PhoneNumber = db.Column(db.String(20))
    Email = db.Column(db.String(50))
    DigitalWallet = db.Column(db.Integer)
    Address = db.Column(db.String(50))

    # Relationships
    purchased_artworks = db.relationship('Artwork', backref='buyer')

class Review(db.Model):
    __tablename__ = 'review'
    UserID = db.Column(db.Integer, db.ForeignKey('user.UId'), primary_key=True)
    ArtworkID = db.Column(db.Integer, db.ForeignKey('artwork.ArtworkID'), primary_key=True)
    Rating = db.Column(db.Integer)
    # Add other fields if necessary

class Review_Comments(db.Model):
    __tablename__ = 'review_comments'
    UserID = db.Column(db.Integer, db.ForeignKey('user.UId'), primary_key=True)
    ArtworkID = db.Column(db.Integer, db.ForeignKey('artwork.ArtworkID'), primary_key=True)
    Comment = db.Column(db.String(500), primary_key=True)

class ClosedDays(db.Model):
    __tablename__ = 'closed_days'
    GalleryID = db.Column(db.Integer, db.ForeignKey('gallery.GalleryID'), primary_key=True)
    ClosedDay = db.Column(db.String(10), primary_key=True)

# Association tables for many-to-many relationships
CreateArt = db.Table('create_art',
    db.Column('ArtistID', db.Integer, db.ForeignKey('artist.ArtistId'), primary_key=True),
    db.Column('ArtworkID', db.Integer, db.ForeignKey('artwork.ArtworkID'), primary_key=True)
)

Display = db.Table('display',
    db.Column('ArtworkID', db.Integer, db.ForeignKey('artwork.ArtworkID'), primary_key=True),
    db.Column('ExhibitionID', db.Integer, db.ForeignKey('exhibition.ExhibitionID'), primary_key=True)
)

Schedule = db.Table('schedule',
    db.Column('GalleryID', db.Integer, db.ForeignKey('gallery.GalleryID'), primary_key=True),
    db.Column('ExhibitionID', db.Integer, db.ForeignKey('exhibition.ExhibitionID'), primary_key=True)
)

UserReviews = db.Table('user_reviews',
    db.Column('UserID', db.Integer, db.ForeignKey('user.UId'), primary_key=True),
    db.Column('ArtworkID', db.Integer, db.ForeignKey('artwork.ArtworkID'), primary_key=True)
)