#!/bin/bash
: '
for cups in 1 2 3 4 5;
do
    echo "Hey, you have had $cups cups of coffee today."
done
'

for cups in {1..10};
do
    echo "Hey, you have had $cups cups of coffee today."
done


