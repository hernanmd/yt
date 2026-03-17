#!/bin/bash

DIR="${1:-.}"

for file in "$DIR"/*.mp4; do
	out_file="paded_"$(basename "$file")
 	ffmpeg -i "$file" \
   		-vf "scale=1080:1920:force_original_aspect_ratio=decrease,pad=1080:1920:(1080-iw)/2:(1920-ih)/2:color=black" \
    	-c:a copy \
    	"$out_file"
done
