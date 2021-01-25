#!/bin/bash
sudo apt-get install xfce4 xrdp --fix-missing    #安装xfce4桌面
sleep 20s
sudo sed -i 's/port=3389/port=3390/g' /etc/xrdp/xrdp.ini    #修改桌面端口号
sudo echo xfce4-session >~/.xsession    #增加桌面配置到系统
sleep 1
sudo service xrdp restart   # 重启桌面
sleep 1
sudo apt-get install fcitx   #下载fcitx输入法框架
sleep 1
sudo apt-get install gedit   #安装图形化gedit编辑器
sleep 1
sudo apt --fix-broken install  #解决包问题
