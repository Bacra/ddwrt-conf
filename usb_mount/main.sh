#!/bin/bash
DIR=$(cd `dirname $0`; pwd)

sleep 10

echo "start aria2"
$DIR/init_aria2.sh

echo "mount TV_video folder"
$DIR/mount_tv_video.sh
