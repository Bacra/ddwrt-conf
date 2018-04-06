#!/bin/bash

# 如果已经有服务在允许，则直接退出
if [ "$(ps | grep aria2c | grep -v grep)" != "" ]; then
    exit
fi

DIR=$(cd `dirname $0`; pwd)

# 先检查一下，是否有现有的目录
for i in $(seq 1 5); do
    sda_dir=/mnt/sda$i
    if [ -d "$sda_dir"]; then
        $DIR/../aria2/sh.sh $sda_dir/download
        exit
    fi
done
