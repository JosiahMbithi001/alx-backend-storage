#!/usr/bin/env python3
"""This File has A Function school_by_topics
"""
def schools_by_topic(mongo_collection, topic):
	"""This Function returns List of Schools with a specific topic"""
	
	schools = mongo_collection.find({"topics" : topic})
	return list(schools)
