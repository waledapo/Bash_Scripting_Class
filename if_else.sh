#!/bin/bash

admin="Wadap"

read -p "Enter your username " username

if [[ "${username}" == "${admin}" ]]; then
	echo "You are the admin user! Welcome"
else
	echo "You are not the admin user, Acess denied!"
fi
