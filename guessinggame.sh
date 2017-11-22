#!/usr/bin/bash
# File: guessinggame.sh
#
# This program compares the user input with the # of files in the current folder.
# Recommends the user about the guess being less or high, congrats the user on a match.
# The program will exit after a successfull match.
#

# function evaluateguess : comparision
function evaluateguess {
local input=$1
local actual=$2

    if [[ $input -lt $actual ]]; then
    	echo "You just guessed too Low. Please try again"
    elif [[ $input -gt $actual ]]; then
    	echo "You guessed it high. Please try again."
    fi
}

# main program

# Count the number of files
dircount=`ls -l | grep '^-' | cut -d' ' -f13 | wc -l`
inputguess=-1

# While Loop to check until the guess is right
while [ $inputguess -ne $dircount ]
do
	echo "Guess the number of Files!"
	# Read the User input
	read inputguess
	#Calling the evaluate function
	evaluateguess $inputguess $dircount
done

echo "Congrats! Correct Guess."


