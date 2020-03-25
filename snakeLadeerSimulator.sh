#!/bin/bash -x
echo "Welcome snake ladder simulator"
#CONSTANT
PLAYER1=0
NO_PLAY=0
LADDER=1
SNAKE=2

#variable
start_position=0
position=0

#die rolls get number between 1 to 6
die_roll=$((RANDOM%6))

#check option for no_player,ladder,snake
read -p "enter a choice" choice
case $choice in
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
