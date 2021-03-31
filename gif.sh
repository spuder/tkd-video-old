#!/bin/bash
# Usage:
# source juniorbrown.env
# ./gif.sh
set -u
source $1

part=1
for i in "${SPLITS[@]}"
do
  start_time=$(echo $i | cut -d'^' -f1)
  stop_time=$(echo $i | cut -d'^' -f2)
  echo "start: ${start_time}; end ${stop_time}"
  ffmpeg -ss ${start_time} -to ${stop_time} -i "${INPUT_FILE}" -filter_complex "[0:v] fps=12,scale=480:-1,split [a][b];[a] palettegen [p];[b][p] paletteuse" -y ${OUTPUT_FILE}-part${part}.gif
  start_time=${stop_time}
  part=$((part+1))
done
