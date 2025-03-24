#!/bin/bash

sudo apt install -q -y software-properties-common

sudo add-apt-repository universe && \
    curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null && \
    apt update -q && \
    apt upgrade -q -y

sudo apt install -y ros-humble-desktop ros-humble-ros-gz ros-dev-tools

sudo apt install -y ros-humble-joint-state-publisher ros-humble-joint-state-publisher-gui

echo 'source /opt/ros/'$ROS_DISTRO'/setup.bash' >> /home/$USERNAME/.bashrc && \
    echo 'source /home/'$USERNAME'/ros2_ws/install/local_setup.bash' >> /home/$USERNAME/.bashrc

echo 'source /opt/ros/'$ROS_DISTRO'/setup.zsh' >> /home/$USERNAME/.zshrc && \
    echo 'source /home/'$USERNAME'/ros2_ws/install/local_setup.zsh' >> /home/$USERNAME/.zshrc

