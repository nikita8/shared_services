#!/bin/bash -e

if [ "$1" == "" ]
then
  docker-compose up -d
else
  docker-compose run --service-ports $1
fi
