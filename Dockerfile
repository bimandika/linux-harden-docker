# Use a base image with Ansible and Python installed
FROM ubuntu:20.04

# Set environment variables to non-interactive to avoid prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    sudo \
    git \
    curl \
    wget \
    python3 \
    python3-pip \
    python3-apt \
    ansible \
    sshpass \
    unzip \
    vim \
    && apt-get clean

# Install Ansible and other dependencies
RUN pip3 install --upgrade pip \
    && pip3 install ansible

# Create a working directory
WORKDIR /workspace

# Clone the hardening repository from GitHub
RUN git clone https://github.com/bimandika/linux-harden-docker.git

# Set the working directory to the cloned repository
WORKDIR /workspace/linux-harden-docker

# Create a script that will be executed when the container runs
RUN echo "#!/bin/bash\n\
    echo \"[target]\n\
    $HOST ansible_user=$USER ansible_ssh_pass=$PASSWORD\" > /workspace/inventory.ini\n\
    ansible-playbook -i /workspace/inventory.ini OS/$DISTRO/${DISTRO}_hardening.yml" > /workspace/run_hardening.sh && chmod +x /workspace/run_hardening.sh

# Provide an easy entrypoint to run the hardening playbook based on the DISTRO variable
ENTRYPOINT ["/bin/bash", "/workspace/run_hardening.sh"]
