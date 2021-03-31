#!/bin/bash
# Usage:
# source juniorbrown.env
# ./gif.sh

source juniorbrown.env

start_time=${START_TIME}
part=1
for stop_time in "${SPLITS[@]}"
do
  echo "start: ${start_time}; end ${stop_time}"
  ffmpeg -ss ${start_time} -to ${stop_time} -i "${INPUT_FILE}" -filter_complex "[0:v] fps=12,scale=480:-1,split [a][b];[a] palettegen [p];[b][p] paletteuse" -y ${OUTPUT_FILE}-part${part}.gif
  start_time=${stop_time}
  part=$((part+1))
done
