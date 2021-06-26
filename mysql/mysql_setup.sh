#!/bin/bash
set -e
service mysql start
mysql < /docker-entrypoint-initdb.d/spotify_ddl.sql
service mysql stop