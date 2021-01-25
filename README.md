# wsl脚本快速使用说明

适合wsl子系统，和其他ubuntu虚拟机和实体机

wsl-linux各种脚本一键换apt国内源，pip国内源，更新系统，配置xshell连接，安装xfce图形化等

重启win10打开linux，每次都要service docker/xrdp/vsftpd/ start，才能使用开启软件，或者自行添加开机自启脚本。

#运行命令


#1、wsl-update.sh 更改apt国内源、pip国内源、安装docker、jdk8、更改成中文语言

    curl https://raw.githubusercontent.com/loveday10000/wsl/blob/main/wsl-update.sh | bash

#2、ssh-xshell.sh 解决无法用xshell连接wsl子系统

    curl https://raw.githubusercontent.com/loveday10000/wsl/blob/main/ssh-xshell.sh | bash

#3、install_xfce4_desktop.sh 安装xfce4图形化桌面，win10远程桌面连接，输入localhost:3390即可连接。

    curl https://raw.githubusercontent.com/loveday10000/wsl/blob/main/install_xfce4_desktop.sh | bash

#4、install_vsftpd.sh 安装并开启vsfptd匿名模式，匿名文件目录在根目录/src/ftp

    curl https://raw.githubusercontent.com/loveday10000/wsl/main/install_vsftpd.sh | bash
