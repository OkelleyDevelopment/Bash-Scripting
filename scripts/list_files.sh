#!/bin/bash

files=/home/nikolai/Workspace/langs/*

echo "Displaying directories in $files"

for file in $files
do
    echo $(basename $file)
done
