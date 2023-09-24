FROM almalinux:8

# Baseline
RUN dnf -y install 'dnf-command(config-manager)'
RUN dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
RUN dnf -y update
RUN dnf -y groupinstall "Development Tools"
RUN dnf -y install gcc cmake

# Docker
RUN dnf -y install docker-ce docker-ce-cli containerd.io

# Cleanup
RUN dnf -y erase 'dnf-command(config-manager)'
