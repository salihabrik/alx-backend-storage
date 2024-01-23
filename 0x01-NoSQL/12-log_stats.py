#!/usr/bin/env python3
'''Task 12's module
'''


from pymongo import MongoClient

def print_nginx_request_logs(collection):
    print(f"{collection.count_documents({})} logs")

    print("Methods:")
    for method in ["GET", "POST", "PUT", "PATCH", "DELETE"]:
        count = collection.count_documents({"method": method})
        print(f"\tmethod {method}: {count}")

    count = collection.count_documents({"method": "GET", "path": "/status"})
    print(f"{count} status check")

def run():
    '''
    stats about Nginx logs stored in MongoDB.
    '''
    client = MongoClient('mongodb://127.0.0.1:27017')
    print_nginx_request_logs(client.logs.nginx)

if __name__ == '__main__':
    run()
