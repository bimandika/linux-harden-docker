# Linux Hardening Using Docker and Ansible

## 🔐 **Overview**

**Linux Hardening Using Docker and Ansible** is a repository designed to help you apply security hardening practices to **Linux systems** using **Docker containers** and **Ansible automation**. This project allows you to automate the hardening of your Linux environments according to industry security standards, such as the **CIS Benchmarks**, using a simple **Docker** container that runs **Ansible** playbooks.

By leveraging **Docker** and **Ansible**, this repository enables easy deployment and application of security hardening configurations across multiple Linux distributions, ensuring a secure and consistent environment for your servers.

---

## 🌍 **Supported Distributions**

This repository provides **hardening playbooks** for the following Linux distributions:

* **CentOS 7**
* **Debian 10**
* **Fedora 32**
* **Ubuntu 18.04**

Each distribution has its dedicated playbook with security configurations and hardening settings.

---

## 🛠️ **Features**

### 🚀 **Automated Security Hardening**

* Apply **CIS Benchmark** security practices automatically using **Ansible**.
* Harden your Linux servers with secure configurations for SSH, firewall, user permissions, and more.

### 🔒 **Hardening Using Docker and Ansible**

* The process is containerized using **Docker** for easy deployment.
* **Ansible** automates the application of security hardening across multiple machines or virtual machines.

### ⚙️ **Modular and Customizable**

* **Ansible playbooks** for various distributions, which can be easily customized based on your needs.
* Extend the playbooks to accommodate your specific security requirements.

---

## 🚀 **Quick Start**

### **1. Clone the Repository**

Start by cloning this repository to your local machine:

```bash
git clone https://github.com/bimandika/linux-harden-docker.git
cd linux-harden-docker
```

### **2. Build the Docker Image**

Build the Docker image that includes all dependencies and hardening scripts:

```bash
docker build -t linux-harden-docker .
```

### **3. Run the Docker Container**

After building the image, run the container interactively:

```bash
docker run -it linux-harden-docker
```

### **4. Set Up Host Variables**

To run the hardening process across **multiple hosts**, you need to provide the **host** information, **SSH username**, **password**, and the **distribution** for the hardening playbook.

#### Run with multiple hosts:

```bash
docker run -it \
  -e HOSTS="VM_IP1,VM_IP2,VM_IP3" \
  -e USER="root" \
  -e PASSWORD="your_password" \
  -e DISTRO="Ubuntu1804" \
  linux-harden-docker
```

* **HOSTS**: A comma-separated list of IPs or hostnames (e.g., `192.168.1.101,192.168.1.102`).
* **USER**: The SSH user for the target systems.
* **PASSWORD**: The SSH password for the target systems.
* **DISTRO**: The Linux distribution for the Ansible playbook (e.g., `CentOS7`, `Ubuntu1804`, etc.).

This will execute the **Ansible playbook** for the specified distribution and harden all the listed hosts.

---

## ⚙️ **How It Works**

1. **Dynamic Inventory Generation**: The **Ansible inventory file** is dynamically created based on the provided `HOSTS`, `USER`, and `PASSWORD`. This file contains all the necessary SSH details for each host.

2. **Ansible Playbook Execution**: After generating the inventory, the corresponding **Ansible playbook** is executed to apply hardening configurations to each host.

3. **Customizable Playbooks**: You can modify or extend the existing **Ansible playbooks** to meet your security requirements or create new playbooks for different configurations.

---

## 📜 **Supported Playbooks**

This repository includes **Ansible playbooks** for the following Linux distributions:

* **CentOS 7**: Hardening playbook for CentOS 7.
* **Debian 10**: Hardening playbook for Debian 10.
* **Fedora 32**: Hardening playbook for Fedora 32.
* **Ubuntu 18.04**: Hardening playbook for Ubuntu 18.04.

---

## ⚠️ **Important Notes**

* **SSH Access**: Ensure the target VMs are accessible via SSH and the provided **USER** and **PASSWORD** have the necessary permissions (e.g., root or sudo) to apply the hardening configurations.

* **Test Before Production**: Always test the hardening process in a **staging environment** before applying it to production systems.

* **Security Considerations**: While this repository follows **CIS Benchmark** best practices, it is not an official **CIS-certified** tool. It is designed to help you improve security by automating configuration hardening.

---

## 📝 **Contributing**

Contributions are welcome! If you'd like to improve the repository, add features, or fix bugs, feel free to fork the repository and submit a pull request.

### **How to Contribute**:

1. Fork the repository.
2. Create a new branch.
3. Make your changes.
4. Submit a pull request with a description of your changes.

---


## 🌟 **Acknowledgements**

This project is inspired by the **CIS Benchmarks** and is intended to provide an automated solution for securing Linux environments.

Thank you to the open-source community for your contributions to system security!

---

## 🏁 **Get Started Now!**

Secure your Dockerized Linux systems today by following the steps in the **Quick Start** section above!

---

## 📄 **References**

For more details on hardening techniques, refer to the article:

* [Securing Dockerized Linux Systems: Hardening Techniques](https://www.warse.org/IJETER/static/pdf/file/ijeter148102020.pdf)

---

## 📝 **License**

This repository is licensed under the [MIT License](LICENSE).

---
