#!/bin/sh

DIR=$(cd `dirname $0`; pwd)

DOWNLOAD_DIR="$1"
if [ "$DOWNLOAD_DIR" = "" ]; then
    $DOWNLOAD_DIR=$DIR/../downloads/
fi

mkdir -p $DIR/tmp/
mkdir -p $DOWNLOAD_DIR

if [ ! -f "$DIR/tmp/aria2.session" ]; then
    touch $DIR/tmp/aria2.session
fi

$DIR/aria2c\
    --conf-path=$DIR/aria2.conf\
    --dir=$DOWNLOAD_DIR\
    --input-file=$DIR/tmp/aria2.session\
    --save-session=$DIR/tmp/aria2.session\
    --log=$DIR/tmp/aria2-log.log\
    > /dev/null &
