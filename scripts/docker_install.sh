#!/bin/bash

if [[ "$XDG_SESSION_TYPE" == "wayland" ]]; then
    DOCKER_UID=$(id -u) DOCKER_GID=$(id -g) docker compose -f docker-compose.yml -f docker-compose.wayland.yml up -d
elif [[ "$XDG_SESSION_TYPE" == "x11" ]]; then
    DOCKER_UID=$(id -u) DOCKER_GID=$(id -g) docker compose -f docker-compose.yml -f docker-compose.x11.yml up -d
else
    echo -e "\033[31m\033[1mInvalid session type\033[0m"
    exit 1
fi

echo "Installation complete, use make term to access the container"
