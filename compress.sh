#!/bin/bash

# Set the path to the directory containing the folders
root_path="./content/post/assets"

# Set the size threshold in bytes
size_threshold_video=10000000
size_threshold_image=1000000

# Create a temporary file to store the list of files
temp_file_list=$(mktemp)

# Collect all video and image files in the root directory and all subdirectories
find "$root_path" -type f \( -name "*.mp4" -o -name "*.mkv" -o -name "*.avi" -o -name "*.jpg" -o -name "*.png" -o -name "*.bmp" \) > "$temp_file_list"

# Loop over the collected file names
while IFS= read -r file; do
    if [ -f "$file" ]; then
        file_size=$(stat -f%z "$file")
        
        # Check if the file is a video and if it exceeds the size threshold for videos
        if { [[ ${file: -4} == ".mp4" ]] || [[ ${file: -4} == ".mkv" ]] || [[ ${file: -4} == ".avi" ]]; } && [ $file_size -gt $size_threshold_video ]; then
            echo "Compressing video: $file"
            ffmpeg -loglevel error -y -i "$file" -vcodec h264 -acodec aac -crf 23 -preset slower "${file%.*}_compressed.${file##*.}"
        fi

        # Check if the file is an image and if it exceeds the size threshold for images
        if { [[ ${file: -4} == ".jpg" ]] || [[ ${file: -4} == ".png" ]] || [[ ${file: -4} == ".bmp" ]]; } && [ $file_size -gt $size_threshold_image ]; then
            echo "Compressing image: $file"
            ffmpeg -loglevel error -y -i "$file" -vf "scale=iw/2:ih/2" -compression_level 5 "${file%.*}_compressed.${file##*.}"
        fi
    # else
    #     echo "File not found: $file"
    fi
done < "$temp_file_list"

# Remove the temporary file
rm "$temp_file_list"

echo "No more files to compress."
