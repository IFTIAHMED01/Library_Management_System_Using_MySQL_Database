# It is a python script to connect to my Library_Management database on MySql Server.
import mysql.connector;

try:
    con = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password="9124641Ifti@",
        database ="library_management"
    )
    
    if con.is_connected():
        print("Connected to the database")
    else:
        print("Failed to connect to the database")
        
except mysql.connector.Error as error:
    print(f"Error: {error}")
    
finally:
    if con.is_connected():
        con.close()
        print("Connection closed")
