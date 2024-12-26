#!/bin/bash

echo 'What is your name?'
read name

echo 'What is your age?'
read age

echo "Cauculating"
echo "..........."
sleep 1
echo "**........"
sleep 1
echo "****......"
sleep 1
echo "******...."
sleep 1
echo "********.."
sleep 1
echo "**********"

echo "Hello, $name, you are $age years old."

getrich=$((( $RANDOM % 15 ) + $age ))

echo "You will are rich with $getrich years old"
