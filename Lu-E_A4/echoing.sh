#!/bin/bash
# Activity 1: Displaying Messages
echo "The time and date are:"
date
echo "Let's see who is logged into the system:"
who
echo For $USER, the home directory is $HOME

# Activity 2: Working when Positional Arguments
MY_NAME=$1
MONEY=$2
echo My name is $MY_NAME and I have '$'$MONEY in my wallet.

#Activity 3: Math Time
one=1
five=5
mathvar1=$((one+five))
mathvar2=$((mathvar1*20))
mathvar3=10
mathvar4=$((mathvar1*$((mathvar2+mathvar3))))
echo Variable 1 is $mathvar1. Variable 2 is $mathvar2. Using $mathvar3 for Variable 3, our final Variable 4 is $mathvar4.

#Activity 4: More Math (Working with floating-point solution)
num1=4.5
num2=1.7

floating=$(echo "scale=3; $num1/$num2" | bc)
echo Our floating variable is $floating and use the options to display the value to have 3 decimal places



