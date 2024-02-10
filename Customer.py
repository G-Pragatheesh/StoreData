from faker import Faker
import mysql.connector 
from mysql.connector import errorcode
import datetime
import random

fake = Faker()
try:
    cnx = mysql.connector.connect(user='root', password='Ranger@*123', host='localhost', database='store')
    cursor = cnx.cursor()

    for _ in range(50):
        FirstName = fake.first_name()
        LastName = fake.last_name()
        Email = fake.email()
        Phonenumber = fake.phone_number()
        Address = fake.address()
        insert_query = ("INSERT INTO customer "
                        "(FirstName ,LastName ,Email , PhoneNmber , Address)"
                        "VALUES (%s,%s,%s,%s,%s)")
        insert_data = (FirstName,LastName,Email,Phonenumber,Address)
        cursor.execute(insert_query,insert_data)

    cnx.commit()
    cursor.close()
    cnx.close()

    print("Data inserted Succesfully")
except mysql.connector.Error as err:
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("Something is wrong with your username or password")
    elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print("Database does not exist")
    else:
        print(err)
   