#!/bin/bash

echo "Enter a path to display files"
# A helpful note (about a 2 years later)
# path has to include the star..
# e.g. /home/<your user name ... the environment var doesn't work for this script
read files

echo "Displaying directories in $files"

for file in $files
do
    echo $(basename $file)
done
