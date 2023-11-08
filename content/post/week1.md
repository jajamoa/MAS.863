---
title: "Week1 - computer-aided design"
date: 2023-09-13T15:32:11-04:00
draft: false
summary: "computer-aided design, model (raster, vector, 2D, 3D, render, animate, simulate, ...) a possible final project"
---

## Week1 - computer-aided design

### Assignment

- [x] model (raster, vector, 2D, 3D, render, animate, simulate, ...) a possible final project, </br>
- [x] compress your images and videos, </br>
- [x] and post a description with your design files on your class page </br>



### Image, Video Compression

```bat
@echo off
setlocal enabledelayedexpansion

:: Set the path to the directory containing the folders
set "root_path=path\to\your\folder"

:: Set the size threshold in bytes (e.g., 20000000 for 20MB for videos and 3000000 for 3MB for images)
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

```




### Basic Block Design
<img src="../assets/week1/final.jpg" style="zoom:50%;" />

### CAD Process

<img src="../assets/week1/1.jpg" style="zoom:50%;" />
<img src="../assets/week1/2.jpg" style="zoom:50%;" />
<img src="../assets/week1/3.jpg" style="zoom:50%;" />
<img src="../assets/week1/4.jpg" style="zoom:50%;" />
<img src="../assets/week1/5.jpg" style="zoom:50%;" />
<img src="../assets/week1/6.jpg" style="zoom:50%;" />
<img src="../assets/week1/7.jpg" style="zoom:50%;" />
<img src="../assets/week1/8.jpg" style="zoom:50%;" />
<img src="../assets/week1/9.jpg" style="zoom:50%;" />
<img src="../assets/week1/10.jpg" style="zoom:50%;" />
<img src="../assets/week1/11.jpg" style="zoom:50%;" />