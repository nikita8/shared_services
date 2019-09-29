# Services

DB(MySql, Postgres, Redis, Memcached, Mongo) and RabbitMq server setups for local machine using `docker compose` and `make` command.

## Installation

For MAC, 

Download and install [Docker for Mac](https://docs.docker.com/docker-for-mac/install/)

## Usage
Clone repo

Run `make build`

To run all the services:
  
  Run `make start`

To bring the services down:
  Run `make stop`

To bring specific services up:
  Run `make start service=<service name>`

  Available services are `redis, mongo, postgres, memcached, rabbitmq, mysql`



