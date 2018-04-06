#!/bin/sh

DIR=$(cd `dirname $0`; pwd)

sleep 10

echo -e "\n\n =====      Start aria2      =====\n"
$DIR/init_aria2.sh

echo -e "\n\n ===== Mount TV_video folder =====\n"
$DIR/mount_tv_video.sh
