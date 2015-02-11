from myblog import app
from flask import request
from flask.ext.cors import CORS, cross_origin

import dbController as dbc

import dbOneButton as dbo
from util_one import OnePost

@app.route('/')
def index():
    return 'rootPath'

def wrapCallback( callback, obj ):
    return callback + '(' + obj + ')'

def pri( id, val ):
    if type(val) == None:
        print id, ' is None'
    else:
        print id, type(val), val

from OneButtonBackend import DBB

@app.route('/oneButton', methods=["POST", "GET", "OPTIONS"])
@cross_origin()
def oneButton():
    print 'oneButton'
    pri ( 1, request.form )
    pri ( 2, request.args )
    #pri ( 4, request.form.get['data'] )
    #print request.form, type( request.form )
    print '7', request.form.get('yourname')
    #return '{"name":"ok"}'
    
    tmp = DBB( request.form.get('content') )
    rev = tmp.exe()
    print rev
    return rev

@app.route('/greet', methods=['GET', 'POST'])
def greet():
    print 'greet'
    recordList = dbc.dbc.exe( "select * from layout;" );
    for record in recordList:
        print record[0]
    return wrapCallback( request.args.get('callback'), '{["yes"]}' )

@app.route('/hello', methods=['GET', 'POST'])
def hello():

    obj = '{"name":"Hello World"}'
    print 'here'

    if request.method == 'GET':
        print 'GET'
        callback = request.args.get('callback')
        print '------------'
        print request.args
        print callback
        if callback:
            return wrapCallback( request.args.get( 'callback' ), obj )
        else:
            return 'console.log("request")'
    elif request.method == 'POST':
        print 'POST'
        return 'hoho'
    else:
        return 'jsonp({"name":"Hello World"})'



