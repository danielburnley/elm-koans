down:
	docker-compose down

build:
	docker-compose build

serve: down build
	docker-compose run --service-ports --rm elm reactor --address=0.0.0.0
