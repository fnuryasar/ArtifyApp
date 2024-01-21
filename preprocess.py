import mysql.connector

def convert_image_to_binary(filename):
    with open(filename, 'rb') as file:
        binary_data = file.read()
    return binary_data

# Database connection
connection = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="merhabalar",
    database='Artify'
)
cursor = connection.cursor()

# Update each artwork record with its image
for artwork_id in range(1, 71):  # Adjust the range based on your artwork IDs
    image_data = convert_image_to_binary(f'static/Artworks/{artwork_id}.jpg')
    cursor.execute("UPDATE Artwork SET Image = %s WHERE ArtworkID = %s", (image_data, artwork_id))

connection.commit()
connection.close()