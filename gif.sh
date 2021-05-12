#!/bin/bash
# Usage:
# source juniorbrown.env
# ./gif.sh
set -u
source $1

RESOLUTION=${RESOLUTION:-480}
FPS=${FPS:-8}

function download_video {
  if [ ! -f "input/${INPUT_FILE}" ]; then
    echo "input/${INPUT_FILE} does not exist, downloading ${VIDEO_URL}"
    filename=$(youtube-dl ${VIDEO_URL} --get-filename)
    filename=$(echo ${filename/webm/mp4})
    youtube-dl -f 22 ${VIDEO_URL}
    mv "${filename}" input/${INPUT_FILE}
  else
    echo "input/${INPUT_FILE} already exists"
  fi
}

download_video

part=1
for i in "${SPLITS[@]}"
do
  start_time=$(echo $i | cut -d'^' -f1)
  stop_time=$(echo $i | cut -d'^' -f2)
  # duration=$stop_time-$start_time
  # echo "duration is $duration"

  echo "start: ${start_time}; end ${stop_time}"
  if [ "${#SPLITS[@]}" -gt 1 ]; then
    output=${OUTPUT_FILE}-part${part}-${RESOLUTION}.gif
  else
    output=${OUTPUT_FILE}-complete-${RESOLUTION}.gif
  fi
  ffmpeg -ss ${start_time} -to ${stop_time} -i "input/${INPUT_FILE}" -filter_complex "[0:v] fps=${FPS},scale=${RESOLUTION}:-1,split [a][b];[a] palettegen [p];[b][p] paletteuse" -y output/${output}
  # ffmpeg -i output/${output} -filter_complex "color=c=red:s=${RESOLUTION}x10[bar];[0][bar]overlay=-w+(w/10)*t:H-h:shortest=1" -c:a copy output/red-${output}
  start_time=${stop_time}
  part=$((part+1))
done
