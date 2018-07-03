#!/bin/sh
sleep 5
python cli.py db_create
service redis-server start
redis-server contrib/sentinel.conf --sentinel
honcho start
