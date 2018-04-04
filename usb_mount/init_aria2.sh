#!/bin/bash

# 如果已经有服务在允许，则直接退出
if [ "$(ps | grep aria2c | grep -v grep)" != "" ]; then
    exit
fi

# 先检查一下，是否有现有的目录
for i in $(seq 1 5); do
    aria2_dir=/mnt/sda$i/aria2
    if [ -d "$aria2_dir"]; then
        $aria2_dir/sh.sh
        exit
    fi
done

# 下载安装服务
for i in $(seq 1 5); do
    self_dir=/mnt/sda$i/
    if [ -d "$self_dir"]; then
        download4github $self_dir
        $self_dir/aria2/sh.sh
        exit
    fi
done


download4github()
{
    self_dir=$1
    self_tmp=$self_dir/.tmp
    mkdir -p $self_tmp
    cd $self_tmp

    curl -L -o ddwrt-conf.tar.gz https://github.com/Bacra/ddwrt-conf/archive/master.tar.gz
    tar -zxvf ddwrt-conf.tar.gz

    mv ddwrt-conf-master/aria2 $self_dir/aria2
    rm -rf $self_tmp
}
