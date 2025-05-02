#!/usr/bin/bash

SAVE_DIR="/home/huseyn/Pictures/Screenshots"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

gnome-screenshot -f $SAVE_DIR/SCR_$DATE.png
