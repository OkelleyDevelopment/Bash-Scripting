#!/usr/bin/bash
# Review of some basic Bash syntax for my Linux Tools Final
# Author: Nicholas O'Kelley

echo "------------ Basic Hello World ----------"
echo Hello World!

echo "------------ Practice With Echo ----------"
echo 'This is the first line'; echo 'This is the second line'


echo "------------ Quoting Rules ----------"
animal="horse";
echo "animal=horse"
echo '$animal';
echo "$animal"

echo "------------ Variable Expansion ----------"

echo ${animal/horse/cat};

length=2;

echo ${animal:0:length}

echo ${animal: -4} # last 4 chars

echo "string length is:"
echo ${#animal}

echo "------------ Array  ----------"


array=(bulbasaur charmander squirtle)

echo first element
echo $array

echo "--------------------------------------"
echo The array
echo ${array[@]}

echo "--------------------------------------"
echo The length is
echo ${#array[@]}

echo "--------------------------------------"
echo Print 2 elements starting from the second
echo ${array[@]:1:2}

echo "--------------------------------------"
echo Print each element on a new line
for i in "${array[@]}"; do
    echo "$i"
done

echo "------------ Brace Expansion  ----------"
echo {1..10}
echo {a..z}


echo "------------ Stats ----------"

echo "Last program's return value: $?"
echo "Script's PID: $$"
echo "Number of arguments passed to script: $#"
echo "All arguments passed to script: $@"
echo "Script's arguments separated into different variables: $1 $2..."

echo "------------ Read ----------"
echo "Enter your age"
read age
echo "You are $age"


echo "------------ If Statements ----------"

if [ $age != 21 ]; then
    echo "You can have chocolate milk"
else
    echo "Heres a beer"
fi


echo "------------ Exploring Subshells ----------"

# Use subshells to work across directories
mkdir someDir;
(echo "First, I'm here: $PWD") && (cd someDir; echo "Then, I'm here: $PWD")
pwd # still in first directory
rmdir someDir/;

