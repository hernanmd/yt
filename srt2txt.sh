#!/bin/bash

for srtFile in *.srt; do
    sed '/^[0-9]/d' "$srtFile" > "$srtFile".txt
done
