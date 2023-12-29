#!/bin/bash

# This script converts .wiki files to markdown using pandoc

# Set the input folder (change "/path/to/input/folder" to the actual folder path)
input_folder="/Users/theena/Documents/GitHub/oneplus7git/FeynmanMethod/zettlekasten/"

# Set the output folder (change "/path/to/output/folder" to the actual folder path)
output_folder="/Users/theena/Documents/vimwikiMDObsidian"

# Create the output folder if it doesn't already exist
mkdir -p "$output_folder"

# Loop through all .wiki files in the input folder
for wiki_file in "$input_folder"/*.wiki
do
    # Get the filename without the extension
    filename=$(basename "$wiki_file" .wiki)

    # Set the output file path
    output_file="$output_folder/$filename.md"

    # Check if the output file already exists
    if [ -e "$output_file" ]
    then
        # Compare the modification time of the input and output files
        if [ "$wiki_file" -nt "$output_file" ]
        then
            # Convert the file to markdown using pandoc and overwrite the existing file
            pandoc "$wiki_file" -f mediawiki -t markdown -o "$output_file"
            echo "Updated $output_file"
        else
            echo "$output_file is up to date"
        fi
    else
        # Convert the file to markdown using pandoc and create a new file
        pandoc "$wiki_file" -f mediawiki -t markdown -o "$output_file"
        echo "Created $output_file"
    fi
done

