#!/bin/bash

case $var in #Checks this variable 
	pattern_1)           #if variable matches pattern 1
		commands     #Run this command
		;;           #End of the case
	pattern2|pattern3)
		commands
		;;
	*)                    # * means anything else- default case



esac
