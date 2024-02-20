import mysql.connector

db = mysql.connector.connect(user="root", password="root", port=3307, host="127.0.0.1", database="carServices")
cursor = db.cursor()