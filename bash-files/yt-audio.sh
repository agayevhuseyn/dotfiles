#!/bin/bash

if [ -z "$1" ]; then
	echo "Enter the URL"
	exit 1
fi
yt-dlp -f bestaudio -o "%(title)s.%(ext)s" $1
