#!/bin/bash -x
echo "Welcome snake ladder simulator"

#CONSTANT
PLAYER1=0
NO_PLAY=0
LADDER=1
SNAKE=2
WINNING_POSITION=100

#variable
start_position=0
position=0

#check player get exact winning position 100
	while [[ $position -le $WINNING_POSITION ]]
	do
		random_number=$((RANDOM%3))
		die_roll=$(((RANDOM%6)+1))

		case $random_number in
			$NO_PLAY)
				position=$position
				;;

			$LADDER)
				position=$(($position+$die_roll))
				if [[ $position < $WINNING_POSITION ]]
				then
					position=$(($position+$die_roll))
				else
					position=$position
				fi
				;;

			$SNAKE)
				if [[ $position < $die_roll ]]
				then
					position=$position
				else
					position=$(($position-$die_roll))
				fi
				;;
		esac
	done

