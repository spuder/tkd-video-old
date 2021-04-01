# Convert mp4 to gif


## Prerequisits

These scripts require a terminal with the following applications installed

- `youtube-dl`
- `ffmpeg`
- 
OSX
`brew install youtube-dl ffmpeg`

Linux
`apt install youtube-dl ffmpeg`

Windows
- Open Powershell (requires windows 10 or newer)
- type `bash`
- type `apt install youtube-dl ffmpeg`

### Usage

1. Download youtube videos

```
./download-kukkiwon.sh
```

2. Generate all videos

```
./gif.sh Taegeuk1Jang.env
./gif.sh Taegeuk2Jang.env
./gif.sh Taegeuk3Jang.env
./gif.sh Taegeuk4Jang.env
./gif.sh Taegeuk5Jang.env
./gif.sh Taegeuk6Jang.env
```

### Wrong videos

- Jr. Blue Form
- Senior Brown One Step Sparring



### Batch Generation

```
for filename in ./SeniorBrown*; do
  ./gif.sh $filename
done
```