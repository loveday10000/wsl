#!/bin/sh
tar -xf frp*.gz
rm -rf frp*.gz
mv frp* frp
cp ./frp/frpc /usr/bin
cp ./frp/frps /usr/bin
cp ./frp/systemd/frpc.service /usr/lib/systemd/system
cp ./frp/systemd/frps.service /usr/lib/systemd/system
cp -rf ./frp /etc
rm -rf ./frp
