#!/bin/bash

# check for valid number of parameters
if [ "$#" -ne 2 ]
then
	echo "Usage: $0 <files_directory> <search_string>"
	exit 1
fi

# reference names for the parameters
filesdir="$1"
searchstr="$2"

# check if filesdir is a directory
if [ ! -d "$filesdir" ]
then
	echo "'$filesdir' is not a directory"
	exit 1
fi

# count files in the directory
filesCount=$(find "$filesdir" -type f | wc -l)

# count matched lines in the respective files of the directory
matchedLines=$(grep -r "$searchstr" "$filesdir" | wc -l)

# print the output message
echo "The number of files are $filesCount and the number of matching lines are $matchedLines"
