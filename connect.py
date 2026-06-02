# It is a python script to connect to my Library_Management database on MySql Server and perform SQL queries on the database tables using python scripts.
import mysql.connector;

import pandas as pd
from sqlalchemy import create_engine

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
        cursor = con.cursor()
        cursor.execute("SELECT * FROM books")
        
        result = cursor.fetchall()
        
        for x in result:
            print(x)
            
        cursor.execute("SELECT * FROM members")
        
        result2 =cursor.fetchall()
        
        for y in result2:
            print(y)
        
        con.close()
        print("Connection closed")