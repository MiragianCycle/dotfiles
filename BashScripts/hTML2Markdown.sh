#!/bin/bash

# This script converts .html files to markdown using pandoc

# Set the input folder (change "/path/to/input/folder" to the actual folder path)
input_folder="/users/theena/vimwiki_html/"

# Set the output folder (change "/path/to/output/folder" to the actual folder path)
output_folder="/users/theena/Documents/vimwikiMDObsidian"

# Create the output folder if it doesn't already exist
mkdir -p "$output_folder"

# Loop through all .html files in the input folder
for html_file in "$input_folder"/*.html
do
    # Get the filename without the extension
    filename=$(basename "$html_file" .html)

    # Set the output file path
    output_file="$output_folder/$filename.md"

    # Check if the output file already exists
    if [ -e "$output_file" ]
    then
        # Compare the modification time of the input and output files
        if [ "$html_file" -nt "$output_file" ]
        then
            # Convert the file to markdown using pandoc and overwrite the existing file
            pandoc "$html_file" -f html -t markdown -o "$output_file"
            echo "Updated $output_file"
        else
            echo "$output_file is up to date"
        fi
    else
        # Convert the file to markdown using pandoc and create a new file
        pandoc "$html_file" -f html -t markdown -o "$output_file"
        echo "Created $output_file"
    fi
done

