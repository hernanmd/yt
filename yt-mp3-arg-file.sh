#!/bin/sh

youtube-dl.exe \
	--prefer-ffmpeg \
	-x \
	--audio-quality 0 \
	--audio-format mp3 \
	-a $1
