#!/bin/bash

echo "This program gets the 10 biggest files in the given path"

# Get the path from the first argument
path="$1"
echo "Path provided: $path"

# Check if the path is provided
if [ -z "$path" ]; then
    echo "No path provided. Please provide a valid directory path."
    exit 1
fi

# Check if the provided path exists
if [ ! -d "$path" ]; then
    echo "The given path is not valid or does not exist."
    exit 1
fi

# Find the 10 biggest files in the given path and save them to a file
du -ah "$path" | sort -hr | head -n 10 > tmp/filesize.txt

echo "This is the list of the biggest files in the given path ($path):"
cat tmp/filesize.txt

