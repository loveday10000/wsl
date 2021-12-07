#!/bin/sh
wget https://hub.fastgit.org/fatedier/frp/releases/download/v0.38.0/frp_0.38.0_linux_amd64.tar.gz
tar -xf frp*.gz
rm -rf frp*.gz
mv frp* frp
cp ./frp/frpc /usr/bin
cp ./frp/frps /usr/bin
cp ./frp/systemd/frpc.service /usr/lib/systemd/system
cp ./frp/systemd/frps.service /usr/lib/systemd/system
cp -rf ./frp /etc
rm -rf ./frp
