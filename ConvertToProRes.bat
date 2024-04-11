SETLOCAL ENABLEDELAYEDEXPANSION

set "OUTPUT_DIRECTORY=.\CONVERTED"
if not exist %OUTPUT_DIRECTORY% mkdir %OUTPUT_DIRECTORY%

for %%f IN (*.mp4) DO (
    set "OUTPUT_FILE=!OUTPUT_DIRECTORY!\%%f"
    ffmpeg -i "%%f" -c:v prores_ks -profile:v 3 -c:a pcm_s16le "!OUTPUT_FILE:.mp4=.mov!"
)
