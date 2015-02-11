from flask import json

def callbackWrapper( cbFuncName, content ):
    return cbFuncName + "(" + content + ")"

class OnePost ( object ):
    post = ""
    callbackFuncName = ""
    instr = ""
    content = ""
    
    def __init__ ( self, post ):
        self.post = json.loads(post)
        self.callbackFuncName = self.post["callback"]
        self.instr = self.post["instr"]
        self.content = self.post["content"]

    def exe( self ):
        if instr.equals( "t1" ):
            return callbackWrapper( self.callbackFuncName, self.content )

from datetime import timedelta
from flask import make_response, request, current_app
from functools import update_wrapper


