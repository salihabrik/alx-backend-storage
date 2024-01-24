# Redis Basic Operations and Simple Cache

This project is about learning how to use Redis for basic operations and as a simple cache.

## Learning Objectives

- Learn how to use Redis for basic operations
- Learn how to use Redis as a simple cache

## Requirements

- All files will be interpreted/compiled on Ubuntu 18.04 LTS using python3 (version 3.7)
- All files should end with a new line
- The first line of all files should be exactly `#!/usr/bin/env python3`
- Code should use the pycodestyle style (version 2.5)
- All modules, classes, functions, and methods should have documentation
- All functions and coroutines must be type-annotated.

## Installation

Install Redis on Ubuntu 18.04:

```bash
sudo apt-get -y install redis-server
pip3 install redis
sed -i "s/bind .*/bind 127.0.0.1/g" /etc/redis/redis.conf