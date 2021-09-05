#!/bin/sh

youtube-dl \
	--write-auto-sub \
	--sub-format srt \
	--sub-lang en \
	--skip-download $1
