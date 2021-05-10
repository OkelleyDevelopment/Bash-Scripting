#!/bin/bash
# Review of some basic Bash syntax for my Linux Tools Final
# Author: Nicholas O'Kelley

echo "------------ Case Statements ----------"

echo "Enter a number "
read  number

case "$number" in
    0) echo "It is zero";;
    1) echo "there is a one";;
    *) echo "Some other third option";;
esac
