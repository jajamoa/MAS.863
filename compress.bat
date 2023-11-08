@echo off
setlocal enabledelayedexpansion

:: Set the path to the directory containing the folders
set "root_path=C:\Users\jajam\CJJL\MIT\HTMAA\MAS.863\content\post\assets\week9"

:: Set the size threshold in bytes (e.g., 50000000 for 50MB for videos and 5000000 for 5MB for images)
set "size_threshold_video=20000000"
set "size_threshold_image=3000000"


:: Loop over all video and image files in the root directory and all subdirectories
for /r "%root_path%" %%F in (*.mp4, *.mkv, *.avi, *.jpg, *.png, *.bmp) do (
    set "file_size=%%~zF"

:: Check if the file is a video and if it exceeds the size threshold for videos
if "%%~xF"==".mp4" if !file_size! gtr !size_threshold_video! (
    echo Compressing video: "%%F"
    ffmpeg -i "%%F" -vcodec h264 -acodec aac -crf 23 -preset slower "%%~dpF%%~nF_compressed%%~xF"
) else if "%%~xF"==".mkv" if !file_size! gtr !size_threshold_video! (
    echo Compressing video: "%%F"
    ffmpeg -i "%%F" -vcodec h264 -acodec aac -crf 23 -preset slower "%%~dpF%%~nF_compressed%%~xF"
) else if "%%~xF"==".avi" if !file_size! gtr !size_threshold_video! (
    echo Compressing video: "%%F"
    ffmpeg -i "%%F" -vcodec h264 -acodec aac -crf 23 -preset slower "%%~dpF%%~nF_compressed%%~xF"
)

:: Check if the file is an image and if it exceeds the size threshold for images
if "%%~xF"==".jpg" if !file_size! gtr !size_threshold_image! (
    echo Compressing image: "%%F"
    ffmpeg -i "%%F" -vf "scale=iw/2:ih/2" -compression_level 5 "%%~dpF%%~nF_compressed%%~xF"
) else if "%%~xF"==".png" if !file_size! gtr !size_threshold_image! (
    echo Compressing image: "%%F"
    ffmpeg -i "%%F" -vf "scale=iw/2:ih/2" -compression_level 5 "%%~dpF%%~nF_compressed%%~xF"
) else if "%%~xF"==".bmp" if !file_size! gtr !size_threshold_image! (
    echo Compressing image: "%%F"
    ffmpeg -i "%%F" -vf "scale=iw/2:ih/2" -compression_level 5 "%%~dpF%%~nF_compressed%%~xF"
)
)


echo No more files to compress.
pause
