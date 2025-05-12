FROM ubuntu:latest
RUN apt update && apt upgrade -y
RUN apt install -y net-tools dnsutils iputils-ping
RUN id -u redes &>/dev/null || useradd -m redes 
RUN echo "redes:redes" | chpasswd
CMD ["bash"]
