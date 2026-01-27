#!/bin/bash


#Method 1: with function 
function greet_user() {
    echo "Hello there!"
}

#Method 2: without function keyword

greet_user2() {
    echo "Hello again!"
}

#Calling both functions
greet_user
greet_user2
