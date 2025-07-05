#!/bin/bash

ffmpeg \
	-loop 1 \
	-framerate 1 \
	-pattern_type glob \
	-i IMG_7999.jpeg \
	-i RAJ.mp3 \
	-vf "scale=-2:720" \
	-c:v libx264 \
	-preset veryfast \
	-crf 23 \
	-c:a aac \
	-b:a 128k \
	-movflags +faststart \
	-r 1 \
	-y \
	-shortest out_RAJ_mobile.mp4
