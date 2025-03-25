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

Execute the installation script

```bash
 curl -fsSL https://raw.githubusercontent.com/Sentience-Robotics/inmoov_ros_sim/mbo/install_script/scripts/install.sh | bash
```

A X server is mandatory to run the RViz simulation

On windows, you can use [VcXsrv](https://sourceforge.net/projects/vcxsrv/)

On linux, you can either use X11 or XWayland

---

## ⚙️ Compilation

Build the package

```bash
make ros-build

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
make ros-run
```

---

## 📖 Documentation

For more details on creation processes, troubleshooting, and other guidance, visit the [Sentience Robotics documentation](https://docs.sentience-robotics.fr).

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

This project is licensed under the **GNU GPL V3 License**. See the [LICENSE](LICENSE) file for details.

---

## 🙌 Acknowledgments

- 🎉 [InMoov Project](https://inmoov.fr/) – Original design by Gael Langevin
- 🎉 **All contributors** to the InMoov community

---

## 📬 Contact

- 📧 Email: [contact@sentience-robotics.fr](mailto:contact@sentience-robotics.fr)
- 🌍 GitHub Organization: [Sentience Robotics](https://github.com/sentience-robotics)
