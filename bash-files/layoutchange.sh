#!/bin/bash

cur=`setxkbmap -query | grep layout | cut -c 13-14`

if [[ $cur == "us" ]]; then
    setxkbmap "az"
else
    setxkbmap "us"
fi
