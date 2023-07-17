#!/usr/bin/env python3
"""This File Contains A Function update_topics
name: (string) school name to update
topics: (list of strings) lists of topics approached in the school
"""
import pymongo

def update_topics(mongo_collection, name, topics):
	"""This Function changes all topics of a school document based on the name"""
	mongo_collection.update_many(
		{"name" : name},
		{"$set" :{"topics": topics}}
	)
	
