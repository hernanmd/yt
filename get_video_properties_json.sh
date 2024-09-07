#!/bin/bash

ffprobe \
	-v error \
	-select_streams v:0 \
	-show_entries stream=width,height,r_frame_rate,codec_name,bit_rate,pix_fmt,color_space,color_primaries,color_transfer,color_range,field_order,bits_per_raw_sample \
	-of json=c=1 \
	-pretty \
	$1

