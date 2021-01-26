#!/bin/bash
#Idea from: https://medium.com/@sekhar.rahul/creating-a-time-lapse-video-on-the-command-line-with-ffmpeg-1a7566caf877
# todo: check if file exist but corrupt! -> rm that will safe a lot of time ...

ls *.jpg | cat -n | while read n f; do mv "$f" "$n.jpg"; done 

#ffmpeg -framerate 60 -pattern_type glob -i "timelapse/2021_01_25*.jpg" -s:v 3840x2160 -c:v libx265 -preset ultrafast 2021-01-25-newram60fps.mkv
cd /home/fabian/timelapse2/
#CONCAT=$(echo $(ls *.jpg))
#ffmpeg -framerate 60 -i "concat:$CONCAT" -c:v libx265 -preset ultrafast -pix_fmt output.mp4

ffmpeg -framerate 60 -start_number 1 -i /home/fabian/timelapse2/%d.jpg -s:v 3840x2160 -c:v libx265 -preset ultrafast 2021-01-25-newram60fpsfix.mkv





ffmpeg -framerate 60 -pattern_type glob -i "timelapse/*.jpg" -s:v 3840x2160 -c:v libx264 -crf 17 -pix_fmt yuv420p my-timelapse.mp4
