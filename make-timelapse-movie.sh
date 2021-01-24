#Idea from: https://medium.com/@sekhar.rahul/creating-a-time-lapse-video-on-the-command-line-with-ffmpeg-1a7566caf877

ffmpeg -framerate 60 -pattern_type glob -i "timelapse/*.jpg" -s:v 3840x2160 -c:v libx264 -crf 17 -pix_fmt yuv420p my-timelapse.mp4
