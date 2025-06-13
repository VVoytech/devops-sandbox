FROM ubuntu
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
# Set root password for SSH access (change 'your_password' to your desired password)
RUN echo 'root:student' | chpasswd && \
    sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd && \
    mkdir -p ~/.ssh && \
    echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIA2yRxjISEY8alt7fK6XYmXQ9Hu1ymyMq4Rxr8CbQItj root@38a3de93dbbb" >> ~/.ssh/authorized_keys

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]