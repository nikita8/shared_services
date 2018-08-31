# Services

DB(MySql, Postgres, Redis, Memcached, Mongo) and RabbitMq server setups for local machine using `docker compose` and `make` command.

## Installation

For MAC, 

Download `Docker for Mac`

## Usage

1. Make .sh files executable.
    ` chmod +x <file> `
2. Run `make build`

To run all the services:
  
  Run `make start`

To bring the services down:
  Run `make stop`

To bring specific services up:
  Run `make start service=<service name>`

  Available services are `redis, mongo, postgres, memcached, rabbitmq, mysql`



