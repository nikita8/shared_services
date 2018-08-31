#!/bin/bash -e

if [ "$1" == "" ]
then
  docker-compose up -d
  ./.docker/dev/mysql_run.sh
else
  if [ "$1" == 'mysql' ]
  then
    ./.docker/dev/mysql_run.sh
  else
    echo $1
    docker-compose run --service-ports $1 
  fi
fi
