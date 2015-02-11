import sys
import os
from myblog import app

if __name__ == '__main__':
    app.run( host='0.0.0.0', port=int(sys.argv[1]), debug=True )


