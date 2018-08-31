#!/bin/bash

# run Mysql through docker run as we were not able to run it through docker compose. 
docker run --rm \
  -p3306:3306 \
  --name mysql \
  -e MYSQL_ALLOW_EMPTY_PASSWORD=yes \
  mysql:latest --default-authentication-plugin=mysql_native_password
