#!/bin/bash

echo "---DOWNLOAD MONITOR ---"

echo "Waiting for 'report.pdf' to finish downloading..."

echo ""

file_exist=false
seconds_waited=0


#Keep checking until file exists
until [[ $file_exist == true ]] #until file exist becomes true
do
    #check if file exist
    if [[ -f "report.pdf" ]]; then
        file_exist=true
	echo "Download Completed! file is ready "
    else
	 echo "Still waiting... ($seconds_waited seconds)"
	 ((seconds_waited++))
	 sleep 1 #check every second
    fi

    #Safety: Don't wait forever
    
    if [[ $seconds_waited -gt 30 ]]; then 
	  echo "Timeout! Download is taking too long"
	  break #exits the loop
    fi
done

echo "Total wait time is $seconds_waited seconds"


