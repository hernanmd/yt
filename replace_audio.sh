#!/bin/bash

set -eo pipefail

strip_audio () {
	local source_video=$1
	local out_video="tmp.mp4"

	ffmpeg \
		-i $source_video \
		-codec copy \
		-an $out_video
}

paste_audio () {
	local source_video=$1
	local source_audio=$2
	local out_video=$3

	ffmpeg \
		-i $source_video \
		-i $source_audio \
		-shortest \
		-c:v copy \
		-c:a aac \
		-b:a 256k \
		$out_video
}

replace_audio () {
	local source_video=$1
	local out_video=$2
	local source_audio=$3

	strip_audio $source_video $out_video
	paste_audio tmp.mp4 $source_audio $out_video
	trash tmp.mp4
}

print_usage () {
	printf "Usage: %s source_video.ext out_video.ext source_audio.ext\n" $0
}

let $# || { print_usage; exit 1; }
replace_audio $1 $2 $3