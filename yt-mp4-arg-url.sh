#!/bin/sh
#	--min-filesize 990m \

# First try to pull a native MP4 version off YouTube, and failing that, transcode to MP4 immediately after downloading

yt-dlp \
	-S res,ext:mp4:m4a \
	--recode mp4 \
	-f bestvideo+bestaudio/best \
	--retries '3' \
	--prefer-ffmpeg \
	--xattrs \
	--audio-quality 0 \
	--audio-format mp3 \
	$1
