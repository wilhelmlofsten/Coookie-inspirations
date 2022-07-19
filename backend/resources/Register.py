from flask_restful import Resource
from flask import request

class Register(Resource):
    def get(self):
        return {"message": "Getting user"}
    
    def post(self):
        data = request.get_json()
        username = data['username']
        password = data['password']
        firstname = data['firstname'] 
        
        print(data['username'])  
        print(data['password'])        
      
        return {"message": "registering user {}".format(username)}