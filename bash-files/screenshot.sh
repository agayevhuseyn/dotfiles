#!/usr/bin/bash

SAVE_DIR="/home/$(whoami)/Pictures/Screenshots"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

if [ ! -d $SAVE_DIR ]; then
    mkdir -p $SAVE_DIR
fi

gnome-screenshot -f $SAVE_DIR/SCR_$DATE.png
