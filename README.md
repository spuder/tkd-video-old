# TKD Videos

Uses this repo to generate videos

https://github.com/spuder/gifr

Videos are hosted in this notion page

https://www.notion.so/d9c0017ffc374ce09bdc8f55e25d30a5?v=75c81de4d5c848949af089063419b910



## Usage

Docker Compose (Recomended)

```
docker compose -f docker-compose.taegeuk3.yaml up --remove-orphans
```

Bash (Not Recomended)

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
    export RESOLUTION=640
    export FPS=10
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