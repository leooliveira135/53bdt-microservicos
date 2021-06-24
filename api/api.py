import json
import traceback
import base64
import logging
from datetime import date, datetime
from flask import Flask, request, jsonify
from flask_cors import CORS, cross_origin
from flaskext.mysql import MySQL

mysql = MySQL()
app = Flask(__name__)
app.config['MYSQL_DATABASE_USER'] = 'rm340189'
app.config['MYSQL_DATABASE_PASSWORD'] = '53bdt'
app.config['MYSQL_DATABASE_DB'] = '53bdt_db'
app.config['MYSQL_DATABASE_HOST'] = 'mysql'

mysql.init_app(app)

@app.route("/Teste")
def Teste():
	return "Welcome to teste!"