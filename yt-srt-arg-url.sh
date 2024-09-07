#!/bin/sh
#	--min-filesize 990m \

yt-dlp \
	--skip-download \
	--write-subs \
	--write-auto-subs \
	--sub-lang "es" \
	--convert-subs srt \
	$1
