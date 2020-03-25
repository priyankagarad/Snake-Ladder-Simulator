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

#check option for no_player,ladder,snake
function playing_game()
{
	while [ $position -lt $WINNING_POSITION ]
	do
		die_roll=$((RANDOM%6))
		random_number=$((RANDOM%3))
		case $random_number in
			$NO_PLAY)
				start_position=$start_position
				;;
			$LADDER)
				start_position=$(($start_postion+$die_roll))
				;;
			$SNAKE)
				start_position=$(($start_position-$die_roll))
				;;
		esac
		echo $start_position
		((position++))
	done
}
playing_game

#if position less than zero than it call function
if [ $position -lt 0 ]
then
	playing_game
fi
