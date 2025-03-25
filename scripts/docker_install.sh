#!/bin/bash

if $(command -v docker) compose &> /dev/null; then
    DOCKER_COMPOSE="$(command -v docker) compose"
elif command -v docker-compose &> /dev/null; then
    DOCKER_COMPOSE="$(command -v docker-compose)"
else
    echo -e "\033[31m\033[1mdocker-compose is not installed\033[0m"
    exit 1
fi

OS_TYPE="$(uname)"
if [[ "$OS_TYPE" == "Darwin" ]]; then
    echo "macOS detected"
    DOCKER_UID=$(id -u) DOCKER_GID=$(id -g) $DOCKER_COMPOSE -f docker-compose.yml -f docker-compose.x11.yml up -d
elif [[ "$XDG_SESSION_TYPE" == "wayland" ]]; then
    echo "Wayland detected"
    DOCKER_UID=$(id -u) DOCKER_GID=$(id -g) $DOCKER_COMPOSE -f docker-compose.yml -f docker-compose.wayland.yml up -d
elif [[ "$XDG_SESSION_TYPE" == "x11" ]]; then
    echo "X11 detected"
    DOCKER_UID=$(id -u) DOCKER_GID=$(id -g) $DOCKER_COMPOSE -f docker-compose.yml -f docker-compose.x11.yml up -d
else
    echo -e "\033[31m\033[1mInvalid session type\033[0m"
    exit 1
fi

echo -e "\033[32m\033[1mInstallation complete\033[0m, you can now access the container with the following commands:"
echo "  xhost +"
echo "  cd inmoov_ros_sim"
echo "  make dc-term"
