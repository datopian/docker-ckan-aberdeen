.PHONY: docker start shell


list:
	@grep '^\.PHONY' Makefile | cut -d' ' -f2- | tr ' ' '\n'

docker:
	docker pull openknowledge/ckan-base:2.7 && \
	docker pull openknowledge/ckan-dev:2.7 && \
	docker-compose -f docker/docker-compose.dev.yml build

start:
	docker-compose -f docker-compose.dev.yml up --build

shell:
	docker-compose -f docker-compose.dev.yml exec ckan-dev bash

