#!/bin/sh

yt-dlp \
	--prefer-ffmpeg \
	-x \
	--audio-quality 0 \
	--audio-format mp3 \
	-a $1
