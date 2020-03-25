#!/bin/bash -x
echo "Welcome snake ladder simulator"

#CONSTANT
PLAYER1=0
NO_PLAY=0
LADDER=1
SNAKE=2
WINNING_POSITION=100

#variable
position=0
play=0

declare -A array
#check player get exact winning position 100
	while [[ $position -lt $WINNING_POSITION ]]
	do
		random_number=$((RANDOM%3))
		die_roll=$(((RANDOM%6)+1))

		case $random_number in
			$NO_PLAY)
				position=$position
				;;

			$LADDER)
				result=$(($position+$die_roll))
				if [[ $result -le $WINNING_POSITION ]]
				then
					position=$(($position+$die_roll))
				else
					position=$position
				fi
					array[$play]=$position
					((play++))
				;;

			$SNAKE)
				if [[ $position -lt $die_roll ]]
				then
					position=$position
				else
					position=$(($position-$die_roll))
				fi
				;;
		esac
array[$play]=$position
done

