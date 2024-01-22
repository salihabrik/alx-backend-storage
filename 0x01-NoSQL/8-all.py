#!/usr/bin/env python3
'''Task 8's module.
'''


from typing import List
def list_all(mongo_collection) -> List:
    """ Function that lists all documents in a collection """
    documents = mongo_collection.find()
    return [doc for doc in documents]