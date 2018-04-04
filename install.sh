self_dir=./
self_tmp=$self_dir/.tmp
mkdir -p $self_dir
cd $self_tmp

curl -L -o ddwrt-conf.tar.gz https://github.com/Bacra/ddwrt-conf/archive/master.tar.gz
tar -zxvf ddwrt-conf.tar.gz

mv ddwrt-conf-master/usb_mount $self_dir/usb_mount
rm -rf $self_tmp
