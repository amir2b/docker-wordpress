#!/usr/bin/env make

CONTAINER=wordpress

all: down update start logs

confirmation:
	@read -p "Are you sure? [y/N] " ans && [ $${ans:-N} = y ]

clean: confirmation down
	@echo "===== Clean ====="
	sudo rm -rf wordpress/code/
	sudo rm -rf mysql/data/

init:
	@echo "===== Initialize ====="
	mkdir -p wordpress/code/
	mkdir -p mysql/data/
	cp -n .env.example .env
	nano .env

build: .env
	@echo "===== Docker build ====="
	docker compose build --compress --parallel

up: .env
	@echo "===== Docker up ====="
	docker compose up

down: .env
	@echo "===== Docker down ====="
	docker compose down --remove-orphans

start: .env
	@echo "===== Docker start ====="
	docker compose up -d

stop: .env
	@echo "===== Docker stop ====="
	docker compose stop

restart: .env
	@echo "===== Docker restart ====="
	make down
	make start

remove: stop
	@echo "===== Remove containers ====="
	docker compose rm -f

logs: .env
	@echo "===== Docker logs ====="
	docker compose logs -f

run: .env
	@echo "===== Docker run container ====="
	docker compose run --rm ${CONTAINER} bash

exec: .env
	@echo "===== Docker exec container ====="
	docker compose exec ${CONTAINER} bash

stats:
	@echo "===== Docker stats ====="
	docker stats

ps:
	@echo "===== Print state of containers ====="
	docker compose ps

update:
	@echo "===== Git Update ====="
	git pull
