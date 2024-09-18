#!/bin/sh
# -i youtube-dl will continue on download errors
# -c, --continue  force resume of partially downloaded files .

yt-dlp \
	-S res,ext:mp4:m4a \
	--recode mp4 \
	--verbose \
	--retries '3' \
	-c \
	-i \
	--prefer-ffmpeg \
	--xattrs \
	--audio-quality 0 \
	--audio-format mp3 \
	-v $1
