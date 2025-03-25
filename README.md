# InMoov ROS 2 simulation package

This repository provides a ROS package for simulation of the InMoov robot platform.

---

## 📌 Overview

This repository aim to provide a fully working simulator supporting the InMoov robotic humanoid platform.

The simulator is shipped in a ROS 2 - ready to use - package

---

## 🌟 Features

✔️ **Complete URDF model** of the InMoov robot

✔️ **Accurate joint configurations** and limits

✔️ **ROS-compatible** (Robot Operating System)

✔️ **Fully fonctional RViz simulation** with a simple ROS 2 package

---

## 📥 Installation

### Setup workspace

Create a workspace (here `inmoov_ws`) with an `src` folder and clone the repository in it

```bash
git clone git@github.com:Sentience-Robotics/inmoov_ros_sim.git inmoov_ws/src/inmoov_ros_sim
```

Go to `inmoov_ws/src/inmoov_ros_sim/`

```bash
cd inmoov_ws/src/inmoov_ros_sim/
```

### Install dependencies

To install dependencies, you can either use the provided docker image (**A**) or install ROS 2 Humble locally (**B**):
<details>
<summary>A - Local Installation (Only if you're on Ubuntu 22.04)</summary>

For a local installation, you have to install the following dependencies:
- ROS 2 Humble
- rviz2 : visualisator
- Gazebo Fortress (launch script not available yet) : simulator
- Colcon, CMake : build system

First ensure that the Ubuntu Universe repository is enabled

```bash
sudo apt install software-properties-common
sudo add-apt-repository universe
```

Now add the ROS 2 GPG key with apt.

```bash
curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
```

Then add the repository to your sources list

```bash
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null
```

Update your apt repository caches after setting up the repositories.

```bash
apt update -q
apt upgrade -q -y
```

Finally, install ros 2

```bash
apt install -y ros-humble-desktop ros-humble-ros-gz ros-dev-tools ros-humble-joint-state-publisher ros-humble-joint-state-publisher-gui
```

Source ros
> On bash
```bash
source /opt/ros/humble/setup.bash
```
> On zsh
```zsh
source /opt/ros/humble/setup.zsh
```
</details>

<details>
<summary>B -Docker Installation</summary>

Authorize the docker to access the X server

```bash
xhost +
```

Start the docker container

```bash
make up
```

Connect to the container

```bash
make term
```

</details>

You will also need to have a running X server to display the simulation

On windows, you can use [VcXsrv](https://sourceforge.net/projects/vcxsrv/)

On linux, you can either use X11 or XWayland

---

## ⚙️ Compilation

Build the package

```bash
colcon build

```
Source your workspace
> On bash
```bash
source ./install/local_setup.bash
```
> On zsh
```zsh
source ./install/local_setup.zsh
```

---

## 🚀 Launch the package

```bash
ros2 launch inmoov_ros_sim main.launch.py
```

---

## 📜 Code of Conduct

We value the participation of each member of our community and are committed to ensuring that every interaction is respectful and productive. To foster a positive environment, we ask you to read and adhere to our [Code of Conduct](CODE_OF_CONDUCT.md).

By participating in this project, you agree to uphold this code in all your interactions, both online and offline. Let's work together to maintain a welcoming and inclusive community for everyone.

If you encounter any issues or have questions regarding the Code of Conduct, please contact us at [contact@sentience-robotics.fr](mailto:contact@sentience-robotics.fr).

Thank you for being a part of our community!

---

## 🤝 Contributing

To find out more on how you can contribute to the project, please check our [CONTRIBUTING.md](CONTRIBUTING.md)

---

## 📜 License

This project is licensed under the GNU GPL V3 License. See the LICENSE file for details.

---

## 🙌 Acknowledgments

- 🎉 [InMoov Project](https://inmoov.fr/) – Original design by Gael Langevin
- 🎉 **All contributors** to the InMoov community

---

## 📬 Contact

- 📧 Email: [contact@sentience-robotics.fr](mailto:contact@sentience-robotics.fr)
- 🌍 GitHub Organization: [Sentience Robotics](https://github.com/sentience-robotics)
