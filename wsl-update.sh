#!/bin/bash
sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list
mkdir /root/.pip
cd /root/.pip
echo "[global]
timeout = 6000
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
trusted-host = pypi.tuna.tsinghua.edu.cn" >pip.conf
apt-get update && apt-get -y upgrade
sleep 20
curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun #安装docker-ce
sleep 5
apt-get install -y language-pack-zh-hans language-pack-zh-hans-base
sleep 1
apt-get install -y openjdk-8-jdk   #安装jdk8
sleep 1
apt-get install -y net-tools    #安装ifconfig
sleep 1
apt-get install -y nginx  #安装nginx
sleep 1
dpkg-reconfigure locales    #切换为中文语言，空格选中CN—ZH，UTF-8中文。