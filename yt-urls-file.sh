#!/bin/sh

# yt-dlp --no-warnings --get-id --default-search "ytsearch" --batch-file $1 | sed 's|^|https://www.youtube.com/watch?v=|'
yt-dlp -t sleep --no-warnings --print "https://www.youtube.com/watch?v=%(id)s" --default-search "ytsearch" --batch-file $1 --replace-in-metadata "search_terms" "^.*$" "& HQ audio"
