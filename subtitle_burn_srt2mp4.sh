#!/bin/bash

echo "$0 <video.mp4> <subs.srt>"

ffmpeg \
	-i "$1" \
	-profile:v baseline \
	-level 3.0 \
	-vf subtitles="$2" \
	out_"$1".mp4
