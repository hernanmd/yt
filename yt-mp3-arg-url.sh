#!/bin/sh

youtube-dl \
	--prefer-ffmpeg \
	-x \
	--audio-quality 0 \
	--audio-format mp3 $1
