
from myblog import app
from flask.ext.sqlalchemy import SQLAlchemy
import json

db = SQLAlchemy(app)

def QueryFlatter( ContentList ):
    rev = []
    for obj  in ContentList:
        rev . append( obj.serialize() )
    return rev

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
        cataobj = TimeCata.query.filter_by( id = int(tmpobj["cata_id"])).first()
        print "TimeType init with cata_id :" + tmpobj["cata_id"]
        print cataobj.id
        self.type_name = tmpobj[ "type_name" ]
        self.type_color = tmpobj[ "type_color" ]
        self.cata = TimeCata.query.filter_by( id = tmpobj["cata_id"]).first()


    def __repr__ ( self ):
        return '<timeType %r>' % self.type_name 

class TimeEvent( db.Model ):
    id = db.Column( db.Integer, primary_key=True )
    event_time = db.Column( db.String(17) )

    next_id = db.Column( db.Integer )
    prev_id = db.Column( db.Integer )

    type_id = db.Column( db.Integer, db.ForeignKey( 'time_type.id' ) )
    type = db.relationship( 'TimeType',
                           backref=db.backref('events', lazy='dynamic'))

    def __init__ ( self, jsobj ):
        tmpobj = json.loads( jsobj )
        self.event_time = tmpobj[ "event_time" ];
        self.prev_id = 0
        self.next_id = 0
        self.type = TimeEvent.query.filter_by( type_name = tmpobj[ "type_name" ] ).first()

    def __repr__( self ):
        return '<timeEvent ( [%d] %d [%d] ):%r>' % ( self.prev_id, self.id, self.next_id, self.event_time )

    def serialize( self ):
        return {
            'id' : self.id,
            'event_time' : self.event_time,
            'type_id' : self.type_id,
            'prev_id' : self.prev_id,
            'next_id' : self.next_id
        }

db.create_all()
db.session.commit()



