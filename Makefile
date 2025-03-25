DOCKER_COMPOSE := $(shell if command -v docker-compose > /dev/null 2>&1; then echo "docker-compose"; else echo "docker compose"; fi)

help:
	@echo "Available commands:"
	@echo "  help:       Show this help message"
	@echo "  dc-up:      Create and start containers"
	@echo "  dc-down:    Stop and remove containers"
	@echo "  dc-start:   Start containers"
	@echo "  dc-stop:    Stop containers"
	@echo "  dc-restart: Restart containers"
	@echo "  dc-term:    Open a terminal in the container"
	@echo "  dc-logs:    View output from containers"
	@echo "  ros-build:  Build ROS2 workspace"
	@echo "  ros-run:    Run ROS2 launch file"
	@echo "  ros-clean:  Clean ROS2 workspace"

dc-up:
	DOCKER_UID=$(shell id -u) DOCKER_GID=$(shell id -g) $(DOCKER_COMPOSE) up -d

dc-down:
	DOCKER_UID=$(shell id -u) DOCKER_GID=$(shell id -g) $(DOCKER_COMPOSE) down

dc-start:
	DOCKER_UID=$(shell id -u) DOCKER_GID=$(shell id -g) $(DOCKER_COMPOSE) start

dc-stop:
	DOCKER_UID=$(shell id -u) DOCKER_GID=$(shell id -g) $(DOCKER_COMPOSE) stop

dc-restart:
	DOCKER_UID=$(shell id -u) DOCKER_GID=$(shell id -g) $(DOCKER_COMPOSE) restart

dc-term:
	DOCKER_UID=$(shell id -u) DOCKER_GID=$(shell id -g) $(DOCKER_COMPOSE) exec ros_ws zsh

dc-logs:
	DOCKER_UID=$(shell id -u) DOCKER_GID=$(shell id -g) $(DOCKER_COMPOSE) logs -f

ros-build:
	colcon build --cmake-args -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=ON

ros-run:
	ros2 launch inmoov_ros_sim main.launch.py

ros-clean:
	rm -rf build install log

.PHONY: help dc-up dc-down dc-start dc-stop dc-restart dc-term dc-logs \
	ros-build ros-run ros-clean
