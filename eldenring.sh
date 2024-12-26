#!/bin/bash
echo "Welcome tarnished. Please select your starting class:
1 - Samurais
2 - Ninja
3 - Prophet
4 - Pirate
"
read class

case $class in
	1)
		type="Samurai"
		hp=9
		attack=8
		magic=3
	;;
	2)
		type="Ninja"
		hp=8
		attack=7
		magic=5
	;;
	3)
		type="Prophet"
		hp=5
		attack=3
		magic=10
	;;
	4)
		type="Pirate"
		hp=10
		attack=6
		magic=2
	;;
esac

echo "You chosen the $type class. Your HP is $hp. Your attack is $attack 
and magic is $magic"

beast=$(($RANDOM % 2))

echo "Your first beast approaches. Prepare top battle. Pick a number 
between 0-1.(0/1)" 
read tarnished

if [[ $tarnished == $beast ]]; then
	echo "BEAST VANQUISHED!! Congrats fellow tarnished"
else
	echo "You died!"
	exit 1
fi

sleep 2 

beast=$(($RANDOM % 10))

echo "Boss battle. Get scared. It's Margit. Pick a number between 0-9. (0-9)"
 
read tarnished

if [[ $tarnished == $beast || $tarnished == "coffee" ]]; then
	echo "Congratulations!! Fellow tarnished"
else
	echo "You died!"
fi
