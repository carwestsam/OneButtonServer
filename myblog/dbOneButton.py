
from myblog import app
from flask.ext.sqlalchemy import SQLAlchemy
import json

db = SQLAlchemy(app)


class TimeCata( db.Model ):
    id = db.Column( db.Integer, primary_key=True )
    cata_name = db.Column( db.String(100),unique=True )

    def serialize( self ):
        return {
            'id' : self.id,
            'cata_name' : self.cata_name
        }

    def __init__( self, jsstr ):
        jsobj = json.loads( jsstr )
        self.cata_name = jsobj[ "cata_name"]

    def __repr__ ( self ):
        return '<timeCata %r>' % self.cata_name

class TimeType( db.Model ):
    id = db.Column( db.Integer, primary_key=True )
    type_name = db.Column( db.String( 100 ), unique=True )
    type_color = db.Column( db.String(30), unique=True)

    cata_id = db.Column( db.Integer, db.ForeignKey( 'time_cata.id' ))
    cata = db.relationship('TimeCata',
                           backref=db.backref('types', lazy='dynamic'))

    def serialize( self ):
        return {
            'id' : self.id,
            'type_name' : self.type_name,
            'type_color' : self.type_color,
            'cata_id' : self.cata_id
        }

    def __init__ ( self, jsobj ):
        tmpobj = json.loads( jsobj )
        cataobj = TimeCata.query.filter_by( cata_name = tmpobj["cata_name"]).first()
        print "TimeType init with cata_name :" + tmpobj["cata_name"]
        print cataobj.id
        self.type_name = tmpobj[ "type_name" ]
        self.type_color = tmpobj[ "type_color" ]
        self.cata = TimeCata.query.filter_by( cata_name = tmpobj["cata_name"]).first()


    def __repr__ ( self ):
        return '<timeType %r>' % self.type_name 

class TimeEvent( db.Model ):
    id = db.Column( db.Integer, primary_key=True )
    event_time = db.Column( db.String(17) )

    type_id = db.Column( db.Integer, db.ForeignKey( 'time_type.id' ) )
    type = db.relationship( 'TimeType',
                           backref=db.backref('events', lazy='dynamic'))

    def __init__ ( self, pub_time, event_time ):
        self.pub_time = pub_time
        self.event_time = event_time

    def __repr__( self ):
        return '<timeEvent %r:%d>' % ( self.time_typeid, self.event_time )

    def serialize( self ):
        return {
            'id' : self.id,
            'event_time' : self.event_time,
            'type_id' : self.type_id
        }

db.create_all()
db.session.commit()



