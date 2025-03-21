# InMoov URDF Simulator

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

Create a workspace

```bash
mkdir ws && cd ws
```

Clone the repository in the src folder

```bash
git clone https://github.com/Sentience-Robotics/simulator.git src/sentience_gz
```

### Install dependencies

Install dependencies, you can either use the provided docker image or install them:

<details>
<summary>Local Installation (Ubuntu 22.04 only)</summary>

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
<summary>Docker Installation</summary>

Pull the docker image

```bash
docker pull ghcr.io/sentience-robotics/ros_ws:humble
```

Then run the docker image

```bash
docker run -it \
    --privileged \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $(pwd)/src:/home/rosdev/ros2_ws/src \
    --name ros2_ws \
    ghcr.io/sentience-robotics/ros_ws:humble
```
</details>

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
ros2 launch sentience_gz main.launch.py
```

---

## 🤝 Contributing

We welcome contributions! Follow these steps to contribute:

- 1️⃣ **Fork** the repository<br>
- 2️⃣ **Create a feature branch:**<br>
    ```bash
    git switch -C <feat|evol|fix>/<amzing-feature>
    ```
- 3️⃣ **Commit your changes:**<br>
    ```bash
    git commit -sm '<feat|evol|fix>/<amzing-feature>'
    ```
- 4️⃣ **Push to your branch:**<br>
    ```bash
    git push origin <feat|evol|fix>/<amzing-feature>
    ```
- 5️⃣ **Open a Pull Request**<br>

Please ensure that:
1. your **Pull Request & commits** respects the indicated **naming convention**
2. your commits are **signed** (use `-s` flag)

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
