#!/bin/bash

# Receives a directory as parameter and returns a list with video file names and it is 4K or not

# Check if a directory parameter was provided, otherwise use the current one
DIR="${1:-.}"

for file in "$DIR"/*; do
	 [ -e "$file" ] || continue
	# Only process files with specific video extensions
    case "${file##*.}" in
        mkv|avi|mp4|mov)
			printf "$file -> "
			ffprobe -v error \
				-select_streams v:0 \
				-show_entries stream=width,height \
				-of csv=s=x:p=0 $file \
				| grep -q -E '3840x2160|4096x2160|4096x2304|3840x2400|3996x2160' && echo 4K || echo Not\ 4K \
				"$file"
			;;
	esac
done
