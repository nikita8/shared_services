help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
cleanup: ## Cleanup the containers and dangling images.
	./.docker/dev/cleanup.sh
build: ## Build for the docker-compose command
	docker-compose build
start: ## Start the service provided (make start service=<service name>). Service can be one of redis, mongo, postgres, memcached, rabbitmq, mysql
	./.docker/dev/start_services.sh $(service)
stop: ## Stop command for docker-compose
	docker-compose down

.PHONY: help
.DEFAULT_GOAL := help
