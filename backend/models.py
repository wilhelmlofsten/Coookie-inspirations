from flask import Flask
from marshmallow import Schema, fields, pre_load, validate
from flask_marshmallow import Marshmallow
from flask_sqlalchemy import SQLAlchemy


ma = Marshmallow()
db = SQLAlchemy()


class User(db.Model):
    __tablename__ = 'users'
    #__table_args__ = tuple(db.UniqueConstraint('id', 'username', name='my_2uniq'))


    id = db.Column(db.Integer(), primary_key=True)
    username = db.Column(db.String(), unique=True)
    firstname = db.Column(db.String())
    password = db.Column(db.String())

    def __init__(self, firstname, password, username):
        self.firstname =firstname
        self.password = password
        self.username = username

    def __repr__(self):
        return '<id {}>'.format(self.id)

    def serialize(self):
        return {
            'id' : self.id,
            'username' : self.username,
            'firstname' : self.firstname,
            'password' : self.password,
        }