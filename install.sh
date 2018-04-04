echo -e "\n\n"
echo " Run in PC\Mac"
echo " Install Start"

self_tmp=./.tmp
mkdir -p $self_tmp
cd $self_tmp

curl -L -o ddwrt-conf.tar.gz https://github.com/Bacra/ddwrt-conf/archive/master.tar.gz
tar -zxvf ddwrt-conf.tar.gz


echo -e "\n\n"
echo "Input DDWrt Password"
scp -r ddwrt-conf-master/usb_mount root@192.168.1.1:/tmp/root

rm -rf $self_tmp

echo -e "\n\n"
echo " Install Finish"
echo " /tmp/root/use_mount/main.sh"
