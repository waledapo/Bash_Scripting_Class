#!/bin/bash
read -p "What is your name? " name

#Check if empty
if [[ -z ${name} ]]; then

#This runs if name is entered

    echo "Please enter your name!"
else
	#This runs only if name is NOT empty(False)
	echo "Hi there ${name}"
fi
