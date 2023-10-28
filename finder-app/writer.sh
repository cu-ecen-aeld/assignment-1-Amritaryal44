#!/bin/bash

# check if valid parameters are specifier
if [ "$#" -ne 2 ]
then
	echo "Usage: $0 <file_path> <string_to_write>"
	exit 1
fi

# references to the parameters specified
writefile="$1"
writestr="$2"

# create a directory if it does not exist
dirName=$(dirname "$writefile")
mkdir -p "$dirName"

# write the string to the mentioned file
echo "$writestr" > "$writefile"

# check if file is created or an error occured
if [ $? -ne 0 ]
then
	echo "File '$writefile' cannot be created"
	exit 1
fi

echo "File '$writefile' is successfully written with string '$writestr'"
