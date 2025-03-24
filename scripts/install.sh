#!/bin/bash

mkdir inmoov_ws
cd inmoov_ws

base_url="$(pwd)/scripts"

git=$(type -p git)
if [[ ! -x "$git" ]]; then
    echo -e "\033[31m\033[1mgit is not installed\033[0m"
    exit 1
fi

if [ "$(ls -A)" ]; then
    echo -e "\033[31m\033[1mdirectory must be empty\033[0m"
    exit 1
fi

# TODO CHANGE
echo -e "\033[32m\033[1mCloning repository...\033[0m"
$git clone --branch mbo/install_script https://github.com/Sentience-Robotics/inmoov_ros_sim.git . 2> /dev/null

echo "Do you prefer to use a local or a docker installation?"
read -p "Choice (local/docker) [l/D]: " choice < /dev/tty
choice=$(echo $choice | tr '[:upper:]' '[:lower:]')

if [[ -z "$choice" || "$choice" == "d" || "$choice" == "docker" ]]; then
    cat $base_url/docker_install.sh | bash
    exit 0
elif [[ "$choice" == "l" || "$choice" == "local" ]]; then
    cat $base_url/local_install.sh | bash
    exit 0
else
    echo -e "\033[31m\033[1mInvalid choice\033[0m"
    exit 1
fi
