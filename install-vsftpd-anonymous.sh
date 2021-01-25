#!/bin/sh
sudo apt-get install vsftpd
sudo sed -i 's#anonymous_enable=NO#anonymous_enable=YES#' /etc/vsftpd.conf
sudo service vsftpd start
echo '————————请把文件放在/src/ftp文件夹，浏览器打开ftp://localhost即可访问—————————
启动vsftpd方法:service vsftpd start'
