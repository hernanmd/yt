#!/bin/sh
#	--min-filesize 990m \

youtube-dl.exe \
	-f bestvideo+bestaudio/best \
	--retries '3' \
	--prefer-ffmpeg \
	--xattrs \
	--audio-quality 0 \
	--audio-format mp3 \
	-a $1
