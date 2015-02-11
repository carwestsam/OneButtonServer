import psycopg2

#cur.execute("select * from weather;")

#recordList = cur.fetchall()
#for record in recordList:
#	tmp = record[1]
#	print tmp.decode('utf-8')

class dbCtrl( object ):
    def __init__( self ):
        self.conn = psycopg2.connect( "dbname=tmpDB user=root" ) 
        self.cur= self.conn.cursor()
    def __del__( self ):
        self.cur.close()
        self.conn.close()
    def exe(self, cmd):
        print 'exe:\t', cmd
        self.cur.execute( cmd )
        recordList = self.cur.fetchall()
        self.conn.commit()
        return recordList

dbc = dbCtrl()

