DOCKER_COMPOSE := $(shell if command -v docker-compose > /dev/null 2>&1; then echo "docker-compose"; else echo "docker compose"; fi)

help:
	@echo "Available commands:"
	@echo "  help:    Show this help message"
	@echo "  up:      Create and start containers"
	@echo "  down:    Stop and remove containers"
	@echo "  restart: Restart containers"
	@echo "  start:   Start containers"
	@echo "  stop:    Stop containers"
	@echo "  term:    Open a terminal in the container"
	@echo "  logs:    View output from containers"

start:
	DOCKER_UID=$(shell id -u) DOCKER_GID=$(shell id -g) $(DOCKER_COMPOSE) start

stop:
	DOCKER_UID=$(shell id -u) DOCKER_GID=$(shell id -g) $(DOCKER_COMPOSE) stop

restart:
	DOCKER_UID=$(shell id -u) DOCKER_GID=$(shell id -g) $(DOCKER_COMPOSE) restart

up:
	DOCKER_UID=$(shell id -u) DOCKER_GID=$(shell id -g) $(DOCKER_COMPOSE) up -d

down:
	DOCKER_UID=$(shell id -u) DOCKER_GID=$(shell id -g) $(DOCKER_COMPOSE) down

term:
	DOCKER_UID=$(shell id -u) DOCKER_GID=$(shell id -g) $(DOCKER_COMPOSE) exec ros_ws zsh

logs:
	DOCKER_UID=$(shell id -u) DOCKER_GID=$(shell id -g) $(DOCKER_COMPOSE) logs -f

.PHONY: help start stop restart up down term
