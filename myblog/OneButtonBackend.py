import json
import dbOneButton as dbo

from sqlalchemy import exc
from dbOneButton import db, TimeCata, TimeType, TimeEvent
from dbOneButton import QueryFlatter


class DBB ( object ):
    postContent = ""
    instr = ""
    data = ""

    def __init__ ( self, postContent ):
        print "DBB init"
        self.postContent = postContent
        print postContent
        obj =  json.loads( postContent )
        self.instr = obj['instr']
        self.data = obj['data']

    def exe( self ):
        print 'exe ' + self.instr
        if self.instr == "addOne":
            return "b:addOne " + self.data

        # Cata opers
        elif self.instr == "getCataList":
            rev = json.dumps( QueryFlatter( TimeCata.query.all() ) )
            print rev
            return rev
        elif self.instr == "addOneCata":
            # if not exsit
            tmpobj = json.loads(self.data)
            cataName = tmpobj['cata_name']

            rtobj = TimeCata.query.filter_by( cata_name = cataName ).first()
            if rtobj is None:
                cata = TimeCata( self.data )
                db.session.add( cata )
                db.session.commit()
                rtobj = cata

            rev = json.dumps( rtobj.serialize() )
            print rev
            return rev
        elif self.instr == "delCata":
            tmpobj = json.loads( self.data )
            cata_id = tmpobj['id']
            rtobj = TimeCata.query.filter_by( id = cata_id ).first()
            if rtobj is not None:
                db.session.delete ( rtobj )
                db.session.commit()
            else:
                print 'something wrong'

            return 'deleted'
 

        # Type opers
        elif self.instr == "getTypeList":
            TimeTypeList = TimeType.query.all()
            rev = json.dumps( QueryFlatter( TimeTypeList ) )
            print rev
            return rev
        elif self.instr == "addType":
            # if not exsit
            tmpobj = json.loads( self.data )
            typeName = tmpobj[ "type_name" ]
            rtobj = TimeType.query.filter_by( type_name = typeName ).first()
            if rtobj is None:
                timeType = TimeType ( self.data )
                db.session.add( timeType )
                db.session.commit()
                rtobj = timeType

            rev = json.dumps( rtobj.serialize() )
            print rev
            return rev



        elif self.instr == "getEventList":
            rev = json.dumps( QueryFlatter( TimeEvent.query.all() ) )
            print rev
            return rev



        elif self.instr == "addOneEvent":
            return "B:addOneEvent "+self.data
        else:
            print '["no case in DBB"]'
            return '["no case in DBB"]'



