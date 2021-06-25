#!/usr/bin/env python

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

def jsonfyer(obj):

	if isinstance(obj, (datetime,date)):
		return obj.isoformat()

@app.route("/Teste")
def Teste():
	return "Welcome to teste!"

@app.route("/getAlternative")
def getAlternative():
	cursor = mysql.connect().cursor()
	cursor.execute("SELECT * FROM 53bdt_db.spotify_alt_playlists_data")
	r = [dict((cursor.description[i][0],value) for i, value in enumerate(row))
			for row in cursor.fetchall()]
	json_str = json.dumps(r, default=jsonfyer)
	return json_str

if __name__ == "__main__":
	app.run(host='0.0.0.0', debug=True)