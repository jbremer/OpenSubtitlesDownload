#!/bin/sh

alias subs='subs --gui cli --lang eng,dut'

for fname in *.mp4 *.avi; do
    if [ ! -f "$(echo "$fname"|sed s/\.mp4/\.srt/|sed s/\.avi/\.srt/)" ]; then
        python OpenSubtitlesDownload.py "$fname"
    fi
done
