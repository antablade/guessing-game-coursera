#!/usr/bin/env bash

echo "[Welcome to Guessing game v0.1]"

function ask {
	echo "Please guess the number of files in the current directory:"
	read guess
}

ask
files=$(ls -1 | wc -l)
while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	ask
done

echo "Congrats for the correct answer! The list of files is:"
echo "---" && ls -1