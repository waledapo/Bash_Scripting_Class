#!/bin/bash


echo "=== GYM REP COUNTER ==="

reps=1 #starts with the first rep
max_reps=5 #Only do 5 reps

while [[ $reps -le $max_reps ]] # while reps is less than or equal to 5
do
    echo "Doing rep number: $reps"
    ((reps++)) #increase rep by 1 - Very important
    sleep 1
done

echo "Workout complete! Did $max_reps reps"
