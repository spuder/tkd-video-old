# TKD Videos

Uses this repo to generate videos

https://github.com/spuder/gifr

## Usage

```
for filename in *.env; do
    echo $filename
    unset RESOLUTION
    unset FPS
    unset VIDEO_URL
    source $filename
    docker run \
      -v $(pwd)/input:/input \
      -v $(pwd)/output:/output \
      -e VIDEO_URL \
      -e SPLITS \
      -e INPUT_FILE \
      -e OUTPUT_FILE \
      -e RESOLUTION \
      -e FPS \
      gifr
done
```

Generating lower resolution 480p / 8fps

```
for filename in *.env; do
    echo $filename
    unset VIDEO_URL
    source $filename
    export RESOLUTION=480
    export FPS=8
    docker run \
      -v $(pwd)/input:/input \
      -v $(pwd)/output:/output \
      -e VIDEO_URL \
      -e SPLITS \
      -e INPUT_FILE \
      -e OUTPUT_FILE \
      -e RESOLUTION \
      -e FPS \
      gifr
done
```