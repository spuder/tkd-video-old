# TKD Videos

Taekwondo Videos

![](https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/1599px-Flag_of_South_Korea.svg.png)

Images are generated with [spuder/gifr:latest](https://github.com/spuder/gifr)


Videos are hosted in this notion page / gifcat

https://www.notion.so/d9c0017ffc374ce09bdc8f55e25d30a5?v=75c81de4d5c848949af089063419b910

## Readme.md updates

A makefile is included to generate this readme. See `templates/README.md.erb` for the template

```
make templates
````

# Junior Green

| Filename | Preview | 
|---|---|
| JuniorGreenForm-complete-640.gif| ![](./output%2FJuniorGreenForm-complete-640.gif) | 
| JuniorGreenSparring-part2-640.gif| ![](./output%2FJuniorGreenSparring-part2-640.gif) | 
| JuniorGreenKicking-part1-640.gif| ![](./output%2FJuniorGreenKicking-part1-640.gif) | 
| JuniorGreenKicking-part2-640.gif| ![](./output%2FJuniorGreenKicking-part2-640.gif) | 
| JuniorGreenSparring-part1-640.gif| ![](./output%2FJuniorGreenSparring-part1-640.gif) | 

# Senior Green

| Filename | Preview | 
|---|---|



# Junior Blue

| Filename | Preview | 
|---|---|
| JuniorBlueSparring-part1-640.gif| ![](./output%2FJuniorBlueSparring-part1-640.gif) | 
| JuniorBlueKicking-part1-640.gif| ![](./output%2FJuniorBlueKicking-part1-640.gif) | 
| JuniorBlueSparring-part2-640.gif| ![](./output%2FJuniorBlueSparring-part2-640.gif) | 
| JuniorBlueKicking-part2-640.gif| ![](./output%2FJuniorBlueKicking-part2-640.gif) | 

# Senior Blue

| Filename | Preview | 
|---|---|
| SeniorBlueForm-complete-640.gif| ![](./output%2FSeniorBlueForm-complete-640.gif) | 
| SeniorBlueSparring-part1-640.gif| ![](./output%2FSeniorBlueSparring-part1-640.gif) | 
| SeniorBlueKicking-part2-640.gif| ![](./output%2FSeniorBlueKicking-part2-640.gif) | 
| SeniorBlueKicking-part1-640.gif| ![](./output%2FSeniorBlueKicking-part1-640.gif) | 
| SeniorBlueSparring-part2-640.gif| ![](./output%2FSeniorBlueSparring-part2-640.gif) | 


# Junior Brown

| Filename | Preview | 
|---|---|
| JuniorBrownKicking-part2-640.gif| ![](./output%2FJuniorBrownKicking-part2-640.gif) | 
| JuniorBrownBreaking-spencer-complete-640.gif| ![](./output%2FJuniorBrownBreaking-spencer-complete-640.gif) | 
| JuniorBrownForm-part4-640.gif| ![](./output%2FJuniorBrownForm-part4-640.gif) | 
| JuniorBrownKicking-part1-640.gif| ![](./output%2FJuniorBrownKicking-part1-640.gif) | 
| JuniorBrownForm-part2-640.gif| ![](./output%2FJuniorBrownForm-part2-640.gif) | 
| JuniorBrownForm-spencer-complete-640.gif| ![](./output%2FJuniorBrownForm-spencer-complete-640.gif) | 
| JuniorBrownForm-complete-640.gif| ![](./output%2FJuniorBrownForm-complete-640.gif) | 
| JuniorBrownForm-part3-640.gif| ![](./output%2FJuniorBrownForm-part3-640.gif) | 
| JuniorBrownsparring-part2-640.gif| ![](./output%2FJuniorBrownsparring-part2-640.gif) | 
| JuniorBrownForm-part1-640.gif| ![](./output%2FJuniorBrownForm-part1-640.gif) | 
| JuniorBrownsparring-part1-640.gif| ![](./output%2FJuniorBrownsparring-part1-640.gif) | 


# Senior Brown

| Filename | Preview | 
|---|---|
| SeniorBrownSparring-part2-640.gif| ![](./output%2FSeniorBrownSparring-part2-640.gif) | 
| SeniorBrownKicking-part2-640.gif| ![](./output%2FSeniorBrownKicking-part2-640.gif) | 
| SeniorBrownKicking-part1-640.gif| ![](./output%2FSeniorBrownKicking-part1-640.gif) | 
| SeniorBrownSparring-part1-640.gif| ![](./output%2FSeniorBrownSparring-part1-640.gif) | 
| SeniorBrownForm-part4-640.gif| ![](./output%2FSeniorBrownForm-part4-640.gif) | 
| SeniorBrownForm-part1-640.gif| ![](./output%2FSeniorBrownForm-part1-640.gif) | 
| SeniorBrownForm-complete-640.gif| ![](./output%2FSeniorBrownForm-complete-640.gif) | 
| SeniorBrownForm-part2-640.gif| ![](./output%2FSeniorBrownForm-part2-640.gif) | 
| SeniorBrownForm-part3-640.gif| ![](./output%2FSeniorBrownForm-part3-640.gif) | 


# Junior Red

| Filename | Preview | 
|---|---|
| JuniorRedForm-complete-640.gif| ![](./output%2FJuniorRedForm-complete-640.gif) | 
| JuniorRedNunchuckas-complete-640.gif| ![](./output%2FJuniorRedNunchuckas-complete-640.gif) | 
| JuniorRedSparring-part1-640.gif| ![](./output%2FJuniorRedSparring-part1-640.gif) | 
| JuniorRedKicking-part2-640.gif| ![](./output%2FJuniorRedKicking-part2-640.gif) | 
| JuniorRedSparring-part2-640.gif| ![](./output%2FJuniorRedSparring-part2-640.gif) | 
| JuniorRedKicking-part1-640.gif| ![](./output%2FJuniorRedKicking-part1-640.gif) | 


# Senior Red

| Filename | Preview | 
|---|---|



## Usage

A `Makefile` is included to simplify making videos

``
make all -j4
```

Or to make a single video

```
make 3 # This will create taegeuk3 videos
```



Docker Compose (Alternative)

```
docker compose -f docker-compose.taegeuk1.yaml up --remove-orphans
docker compose -f docker-compose.taegeuk2.yaml up --remove-orphans
docker compose -f docker-compose.taegeuk3.yaml up --remove-orphans
docker compose -f docker-compose.taegeuk4.yaml up --remove-orphans
docker compose -f docker-compose.taegeuk5.yaml up --remove-orphans
docker compose -f docker-compose.taegeuk6.yaml up --remove-orphans
docker compose -f docker-compose.taegeuk7.yaml up --remove-orphans
docker compose -f docker-compose.taegeuk8.yaml up --remove-orphans
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