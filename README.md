

```bash
input_file='jrbrownform.mp4'

start_time=07
stop_time=15
output_file='jrBrownFrom-Part1.gif'
```
```bash
ffmpeg -ss ${start_time} \
-to ${stop_time} \
-i ${input_file} \
-filter_complex "[0:v] fps=12,scale=480:-1,split [a][b];[a] palettegen [p];[b][p] paletteuse" \
${output_file}
```

07-13
13-23
23-32
32-46
46-51

 