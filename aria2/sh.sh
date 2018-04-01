#!/bin/sh

#DIR=`pwd`
#DIR=/mnt/sda1/aria2
DIR=$(cd `dirname $0`; pwd)

DOWNLOAD_DIR=$DIR/../downloads/
mkdir $DIR/tmp/
mkidr -p $DOWNLOAD_DIR

$DIR/aria2c --conf-path=$DIR/aria2.conf --dir=$DOWNLOAD_DIR --input-file=$DIR/tmp/aria2.session --save-session=$DIR/tmp/aria2.session --log=$DIR/tmp/aria2-log.log > /dev/null &