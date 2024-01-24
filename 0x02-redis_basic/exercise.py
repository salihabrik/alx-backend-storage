#!/usr/bin/env python3
'''A module for using the Redis NoSQL data storage.
'''
import redis
import uuid
from typing import Callable


class Cache:
    def __init__(self):
        self._redis = redis.Redis()
        self._redis.flushdb()

    def store(self, data) -> str:
        key = str(uuid.uuid4())
        self._redis.set(key, data)
        return key
    def get(self, key: str, fn: Callable = None):
        value = self._redis.get(key)
        return fn(value) if fn else value

    def get_str(self, key: str):
        return self.get(key, fn=lambda d: d.decode("utf-8"))

    def get_int(self, key: str):
        return self.get(key, fn=int)    