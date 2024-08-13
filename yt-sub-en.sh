#!/bin/sh

yt-dlp \
	--write-auto-sub \
	--sub-format srt \
	--sub-lang en \
	--skip-download $1
