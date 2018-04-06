#!/bin/sh

TARGET_DIR=/mnt/TV_video

if [ ! -d $TARGET_DIR ]; then
    mkdir $TARGET_DIR

    for i in $(seq 1 5); do
        self_dir=/mnt/sda$i/TV_video
        if [ -d "$self_dir" ]; then
            mount -r $self_dir $TARGET_DIR
            echo "Mount TV_video: $self_dir"
            break
        fi
    done

fi
