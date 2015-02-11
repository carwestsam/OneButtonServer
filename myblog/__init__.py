from flask import Flask
from flask import request

app = Flask( __name__ )

app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://root:zxcASDqwe@localhost/only'
app.config['SQLALCHEMY_ECHO'] = True

import  myblog.views
