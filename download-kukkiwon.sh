# Taegeuk 3
url=https://www.youtube.com/watch?v=ksSqKt0UkWo
filename=$(youtube-dl ${url} --get-filename)
filename=$(echo ${filename/webm/mp4})
youtube-dl -f 135 ${url}
mv "${filename}" Taegeuk3Jang.mp4

# Taegeuk 4
url=https://www.youtube.com/watch?v=Lt917gacJho
filename=$(youtube-dl ${url} --get-filename)
filename=$(echo ${filename/webm/mp4})
youtube-dl -f 135 ${url}
mv "${filename}" Taegeuk4Jang.mp4

# Taegeuk 5
url=https://www.youtube.com/watch?v=VdqNEAHWCBM
filename=$(youtube-dl ${url} --get-filename)
filename=$(echo ${filename/webm/mp4})
youtube-dl -f 135 ${url}
mv "${filename}" Taegeuk5Jang.mp4