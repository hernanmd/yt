#!/bin/sh
# -i youtube-dl will continue on download errors
# -c, --continue  force resume of partially downloaded files .

youtube-dl.exe \
	-c \
	-i \
	--prefer-ffmpeg \
	-x \
	--audio-quality 0 \
	--audio-format mp3 \
	ytuser:$1