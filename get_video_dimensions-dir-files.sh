#!/bin/bash

for f in *; do
	ffprobe -v error -select_streams v -show_entries stream=width,height -of csv=p=0:s=x "$f"
done
