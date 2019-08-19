FROM ubuntu
RUN apt-get update && apt-get install -y vim openssh-server cmake g++
RUN echo "PermitRootLogin yes \\nPubkeyAuthentication yes \\nAuthorizedKeysFile .ssh/authorized_keys" >> /etc/ssh/sshd_config && /etc/init.d/ssh restart
RUN echo "root:root" | chpasswd
