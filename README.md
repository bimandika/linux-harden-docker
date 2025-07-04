# Linux Hardening using Docker

## 🔐 **Overview**

**Linux Hardening for Docker** provides an automated solution to enhance the security of your Dockerized Linux servers. By leveraging **Ansible** playbooks and security best practices, this repository helps you secure your Docker environment across various Linux distributions.

This repository includes the necessary scripts and configurations that enable you to harden your systems using Docker containers. It is inspired by the **Center for Internet Security (CIS) Benchmarks** but is not affiliated with them.

---

## 🌍 **Supported Distributions**

This repository provides configuration files for the following Linux distributions:

* **CentOS 7**
* **Debian 10**
* **Fedora 32**
* **Ubuntu 18.04**

Each distribution has its own dedicated directory with specific YAML files for hardening.

---

## 🛠️ **Key Features**

### 🚀 **Automated Security Hardening**

* Harden your Linux servers by automating security best practices using **Ansible playbooks**.
* Scripts designed to implement **CIS Benchmarks** security configurations for Docker environments.

### 🔒 **Docker Security Configurations**

* Secure your Docker setup with configurations that address common vulnerabilities in Dockerized environments.

### ⚙️ **Modular and Customizable**

* Tailored security playbooks for different Linux distributions.
* Easily customizable configurations based on your environment's needs.

### 📊 **Docker and Ansible Integration**

* Full integration with **Docker** to run your containers securely.
* **Ansible** automates the setup of security hardening configurations.

---

## 🚀 **Installation & Setup**

### 1. **Clone the Repository**

Clone this repository to your local machine or server:

```bash
git clone https://github.com/bimandika/linux-harden-docker.git
cd linux-harden-docker
```

### 2. **Docker Setup**

To run the Dockerized version of the hardening configurations, you'll need to recompile the Docker image. This process ensures that the necessary configurations are applied correctly.

**To build the Docker container:**

```bash
docker build -t linux-harden-docker .
```

**To run the Docker container:**

```bash
docker run -it linux-harden-docker /bin/bash
```

### 3. **Run Ansible Playbooks**

Navigate to the directory for the desired distribution (e.g., `CentOS7`, `Ubuntu1804`, etc.), and execute the Ansible playbook for the specific system you want to secure.

#### Example for CentOS 7:

```bash
cd OS/CentOS7
ansible-playbook -i hosts centos7_hardening.yml
```

Repeat similar steps for other distributions by replacing the file names with the appropriate `.yml` playbooks for each distribution.

### 4. **Pull Latest Changes**

If you've already cloned the repository, you can keep it up-to-date with the latest changes by running:

```bash
git pull
```

This will ensure you have the latest security configurations and updates.

---

## ⚠️ **Important Considerations**

* **Not Officially Affiliated with CIS**: This project draws inspiration from the **CIS Benchmarks** but is not officially associated with the Center for Internet Security.
* **Test Before Production**: Please thoroughly test the scripts in a **staging environment** before deploying them to your production servers.
* **Compatibility**: Ensure the hardening scripts are compatible with your specific Linux distribution versions.

---

## 📝 **Contributing**

We welcome contributions! If you’d like to improve the repository or fix bugs, feel free to fork the repository and submit a pull request.


## 🌟 **Acknowledgements**

This project is inspired by the **CIS Benchmarks** and open-source community best practices. Thank you to everyone who contributes to improving security on Linux-based Docker environments.

---

## 🏁 **Get Started Now!**

Start hardening your Dockerized Linux environments today! Follow the steps above to enhance your system's security using **Ansible** playbooks and **Docker** containers.

---

## 📝 **License**

This repository is licensed under the [MIT License](LICENSE).
