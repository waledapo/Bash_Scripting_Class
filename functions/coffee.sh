#!/bin/bash

#without function 


echo "=== MAKING COFFEE ==="
echo "1. Boil water"
echo "2. Add coffee grounds"
echo "3. Brew for 4 minutes"
echo "4. Pour into your cup"
echo "Enjoy your coffee"
echo""

echo "=== MAKING COFFEE ==="

echo "1. Boil water"
echo "2. Add coffee grounds" 
echo "3. Brew for 4 minutes"
echo "4. Pour into your cup"
echo "Enjoy your coffee"

#WITH FUNCTION 
echo""
echo "=== MAKING COFFEE (f)==="

function make_coffee() {
    echo "1. Boil water"
    echo "2. Add coffee grounds" 
    echo "3. Brew for 4 minutes"
    echo "4. Pour into your cup"
    echo "Enjoy your coffee"
    echo ""
}

#Use function multiple times.
make_coffee
make_coffee
