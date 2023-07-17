#!/usr/bin/env python3
"""This Python Function Lists all documents in a collection"""

def list_all(mongo_collection):
	"""This Function lists all documents in the collection"""
	documents = mongo_collection.find({})
	return list(documents)
