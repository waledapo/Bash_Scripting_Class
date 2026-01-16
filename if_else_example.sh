#!/bin/bash

if (( $EUID == 0 )); then
	echo "Please do not run the script as ROOT"
	echo "ROOT access can accidentally damage yout system"
	exit 1
fi
