# Author By Fachril Indra Gunawan
# Template By AdminLTE3


import os
import datetime

from flask import Flask, render_template, request, redirect, session, abort
from flask.wrappers import Response
from peewee import *
from playhouse.db_url import connect
from flask.helpers import url_for
from hashlib import md5

app = Flask(__name__)
app.secret_key =  'this_is_secret_key123123'

@app.route('/')
def homepage():
    return render_template('index.html')

@app.route('/login_admin')
def login_admin():
    return render_template('login_admin.html')

@app.route('/login_penilai')
def login_penilai():
    return render_template('login_penilai.html')

@app.route('/karyawan')
def karyawan():
    return render_template('data_karyawan.html')

@app.route('/penilai')
def penilai():
    return render_template('data_penilai.html')

@app.route('/penilaian')
def penilaian():
    return render_template('penilaian.html')

@app.route('/detail_penilaian')
def detail_penilaian():
    return render_template('detail_penilaian.html')
