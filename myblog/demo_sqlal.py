# -*- coding:utf-8 -*-
from flask import Flask
from flask.ext.sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://root:zxcASDqwe@localhost/only'
db=SQLAlchemy(app)

## demo1 basic 
#
#class User( db.Model ):
#    id = db.Column( db.Integer, primary_key=True )
#    username = db.Column( db.String(80), unique=True )
#    email = db.Column( db.String(80), unique=True )
#
#    def __init__( self, username, email ):
#        self.username = username
#        self.email = email
#
#    def __repr__( self ):
#        return '<User %r>' % self.username
#
#class Weather( db.Model ):
#    id = db.Column( db.Integer, primary_key=True )
#    city = db.Column ( db.String(80), unique = True )
#
#    def __init__( self, city ):
#        self.city = city
#
#    def __repr__( self ):
#        return '<Weather %r>' % self.city

#
#
# 可以工作,但是在第二次启动程序的时候,没有办法使用m2s函数
#
#
#class m1( db.Model ):
#    id = db.Column( db.Integer, primary_key=True )
#    name = db.Column ( db.String(80) )
#
#
#    m2_id = db.Column( db.Integer, db.ForeignKey( 'm2.id' ) )
#    m2m = db.relationship( 'm2',
#                         backref = db.backref('m2s', lazy='dynamic'))
#
#    def __init__( self, name, m2m  ):
#        self.name = name
#        self.m2m = m2m
#    def __repr__( self ):
#        return '<m1 %r>' % self.name
#
#class m2( db.Model ):
#    id = db.Column ( db.Integer, primary_key=True )
#    name = db.Column( db.String(80) )
#
#    def __init__( self, name ):
#        self.name = name
#    def __repr__(self):
#        return '<m2 %r>' % self.name
        

class m1( db.Model ):
    id = db.Column( db.Integer, primary_key=True )
    name = db.Column ( db.String(80) )


    m2_id = db.Column( db.Integer, db.ForeignKey( 'm2.id' ) )
    m2m = db.relationship( 'm2',
                         backref = db.backref('m2s', lazy='select'))

    def __init__( self, name, m2m  ):
        self.name = name
        self.m2m = m2m
    def __repr__( self ):
        return '<m1 %r>' % self.name

class m2( db.Model ):
    id = db.Column ( db.Integer, primary_key=True )
    name = db.Column( db.String(80) )

    def __init__( self, name ):
        self.name = name
    def __repr__(self):
        return '<m2 %r>' % self.name

db.create_all()
db.session.commit()

