from flask_restful import Resource
from flask import request

class Register(Resource):
    def get(self):
        return {"message": "Getting user"}
    
    def post(self):
        print(request.get_json())
        return {"message": "registering user"}