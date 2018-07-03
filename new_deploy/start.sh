#!/bin/sh
python cli.py db_create
service redis-server start
redis-server contrib/sentinel.conf --sentinel
honcho start