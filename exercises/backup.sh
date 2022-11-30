#!/bin/bash
# A script to backup a series of directories with the final 
# tar file having the current date
#
# Error Codes:
# 1 - Missing tar file name
# 2 - Missing path to compress

tar_file_name=$1
path_to_compress=$2

if [ -z "${tar_file_name}" ]; then
    echo "Please provide a name for the final archive."
    exit 1
fi

if [ -z "${path_to_compress}" ]; then
    echo "Please provide a path to compress."
    exit 2
fi


archive="$tar_file_name-$(date +%Y-%m-%d).tbz"
tar -cjf $archive $path_to_compress 
echo "Archive named: " $archive
echo "Done."
