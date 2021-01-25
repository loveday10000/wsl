#!/bin/bash
apt-get update
sleep 1
apt-get --reinstall install openssh-server
sleep 1
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
service ssh restart
sleep 1
echo '-------service ssh start-------启动ssh命令'
