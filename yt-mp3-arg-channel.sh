#!/bin/sh
# -i youtube-dl will continue on download errors
# -c, --continue  force resume of partially downloaded files .

youtube-dl \
	--verbose \
	--download-archive downloaded.txt \
	--prefer-ffmpeg \
	--audio-quality 0 \
	--audio-format mp3 \
	-cwix \
	-o "%(title)s.%(ext)s" \
	-v $1
