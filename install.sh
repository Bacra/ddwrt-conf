#!/bin/bash

echo -e "\n\n"
echo " Run in PC\Mac"
echo " Install Start"

self_tmp=./.tmp
mkdir -p $self_tmp
cd $self_tmp

curl -L -o ddwrt-conf.tar.gz https://github.com/Bacra/ddwrt-conf/archive/master.tar.gz
tar -zxvf ddwrt-conf.tar.gz


echo -e "\n\n"
scp -r ddwrt-conf-master root@192.168.1.1:/jffs/

rm -rf $self_tmp

echo -e "\n\n"
echo " Install Finish"
echo " /jffs/ddwrt-conf-master/usb_mount/main.sh"
echo -e "\n\n"
