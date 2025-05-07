FROM ubuntu:latest 
RUN apt update
RUN apt upgrade -y 
RUN apt install -y net-tools dnsutils iputils-ping 
RUN useradd -m redes
RUN apt install openssh-server -y
RUN echo "redes:redes"|chpasswd
CMD ["sh", "-c", "service ssh start; tail -f /dev/null"]