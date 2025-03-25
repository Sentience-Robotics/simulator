FROM ghcr.io/sentience-robotics/ros2_base:humble

ARG ROS_DISTRO=humble
ARG USERNAME=rosdev
ARG UID=1000
ARG GID=$UID

# Create and switch to user
RUN groupadd -g $GID $USERNAME \
    && useradd -lm -u $UID -g $USERNAME -s /bin/bash $USERNAME \
    && echo "$USERNAME ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers

# Setup zsh
RUN touch /home/$USERNAME/.zshrc && \
    chsh -s /bin/zsh $USERNAME
ENV SHELL=/bin/zsh
USER $USERNAME
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Create workspace so that user own this directory
RUN mkdir -p /home/$USERNAME/ros2_ws/src
WORKDIR /home/$USERNAME/ros2_ws

# Copy configuration files
RUN echo 'source /opt/ros/'$ROS_DISTRO'/setup.bash' >> /home/$USERNAME/.bashrc && \
    echo 'source /home/'$USERNAME'/ros2_ws/install/local_setup.bash' >> /home/$USERNAME/.bashrc

RUN echo 'source /opt/ros/'$ROS_DISTRO'/setup.zsh' >> /home/$USERNAME/.zshrc && \
    echo 'source /home/'$USERNAME'/ros2_ws/install/local_setup.zsh' >> /home/$USERNAME/.zshrc

CMD ["zsh"]
