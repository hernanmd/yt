#!/bin/bash

# Check if a directory parameter was provided, otherwise use the current one
DIR="${1:-.}"

for file in "$DIR"/*.mp4; do
	out_file="muted_"$(basename "$file")
	ffmpeg -i "$file" -an "$out_file"
done
