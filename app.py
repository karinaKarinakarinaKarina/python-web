import requests
from flask import Flask, render_template, request
import psycopg2

app = Flask(__name__)
conn = psycopg2.connect(database="service_db", user="postgres", password="123", host="localhost", port="5432")
cursor = conn.cursor() #курсор для обращения к бд

@app.route('/login/', methods=['GET'])
def index():
    return render_template('login.html')

@app.route('/login/', methods=['POST'])
def login():
     username = request.form.get('username')
     password = request.form.get('password')
     if (username == '' or password == '') :
          return render_template('login.html', error='Not enough data')
     cursor.execute("SELECT * FROM service.users WHERE login=%s AND password=%s", (str(username), str(password)))
     record = list(cursor.fetchall())
     print(record)
     if record:
          def Convert(lst):
               res_dct = {'full_name': record[0][1], 'username': record[0][2], 'password': record[0][3]}
               return res_dct
          rec_ds = Convert(record)
          return render_template('account.html', **rec_ds)
     return render_template('login.html', error="User with given username does not exist or password is incorrect")