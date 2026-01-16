#!/bin/bash

fruits=("apple" "banana" "carrot" "date" "eggplant")
#This would show all fruits
echo "These are currently present ${fruits[@]}"

#This would print out the second fruit
echo "Do you like ${fruits[1]}"

#This would print from the second to the fourth

echo "I like ${fruits[@]:1:3}"

#Prints from the fourth to the end
echo "I prefer ${fruits[@]:3}"
