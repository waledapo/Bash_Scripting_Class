#!/bin/bash

#Function that takes one argument $1

greet_person() {

    echo "Hello, $1! Nice to meet you!"

}

#Calling with different args

greet_person "Alice"
greet_person "Elijah"
greet_person "Adewale"
