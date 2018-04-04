#!/bin/bash

sleep 10

echo "start aria2"
./init_aria2.sh

echo "mount TV_video folder"
./mount_tv_video.sh
