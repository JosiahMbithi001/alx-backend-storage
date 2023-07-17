#!/usr/bin/env python3
"""This File has A Function insert_school
"""

def insert_school(mongo_collection, **kwargs):
	"""This Function inserts a document in a collection"""

	new_school_id = mongo_collection.insert_one(kwargs).inserted_id
	return new_school_id
