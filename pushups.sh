#!/bin/bash
: '
x=1

while [[ $x -le 100 ]]
do
    echo "Hey, I just did $x pushups"
    ((x ++))
    sleep 1
done '

: '
x=1

while [[ $x -le 10 ]]
do
    read -p "Pushup $x: Press enter to continue"
    ((x ++)) # incremento
done
    echo "Congrats, you completed your pushups!!"
'

until [[ $drink == "coffee" ]]
do
    echo "What drink do you like?"
    read drink    
done
    echo "Good choice, take your coffee!"