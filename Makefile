cleanup:
	./.docker/dev/cleanup.sh
build:
	docker-compose build
start:
	./.docker/dev/start_services.sh $(service)
stop:
	docker-compose down
