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

# Create a script to handle multiple hosts and run playbooks
RUN echo "#!/bin/bash\n\
    # Generate the Ansible inventory file\n\
    echo \"[targets]\" > /workspace/inventory.ini\n\
    IFS=',' read -ra ADDR <<< \$HOSTS\n\
    for host in \"\${ADDR[@]}\"\n\
    do\n\
        echo \"\$host ansible_user=\$USER ansible_ssh_pass=\$PASSWORD\" >> /workspace/inventory.ini\n\
    done\n\
    # Run the Ansible playbook for the specified distribution\n\
    ansible-playbook -i /workspace/inventory.ini OS/\$DISTRO/\$DISTRO_hardening.yml" > /workspace/run_hardening.sh && chmod +x /workspace/run_hardening.sh

# Provide an easy entrypoint to run the hardening playbook
ENTRYPOINT ["/bin/bash", "/workspace/run_hardening.sh"]
