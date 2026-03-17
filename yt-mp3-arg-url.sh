#!/bin/sh

yt-dlp \
	-x \
	--audio-quality 0 \
	--audio-format mp3 $1
