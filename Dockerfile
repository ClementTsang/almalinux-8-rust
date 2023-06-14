FROM almalinux:8
RUN dnf -y groupinstall "Development Tools"
RUN dnf -y install gcc cmake