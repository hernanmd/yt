#!/bin/sh
#	--min-filesize 990m \

yt-dlp \
	-S res,ext:mp4:m4a \
	--recode mp4 \
	-f bestvideo+bestaudio/best \
	--retries '3' \
	--prefer-ffmpeg \
	--xattrs \
	--audio-quality 0 \
	--audio-format mp3 \
	-a $1
