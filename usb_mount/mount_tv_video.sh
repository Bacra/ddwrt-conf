#!/bin/sh

TARGET_DIR=/mnt/TV_video

if [ ! -d $TARGET_DIR ]; then
    mkdir $TARGET_DIR
fi

for i in $(seq 1 5); do
    self_dir=/mnt/sda$i/TV_video
    if [ -d "$self_dir"]; then
        mount $self_dir $TARGET_DIR
        break
    fi
done
