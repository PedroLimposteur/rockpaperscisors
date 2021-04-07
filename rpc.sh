echo Say rock, paper of scissor
read player_choice
player_choice="${player_choice,,}" # to lower case

echo "rock paper scissors" | grep -w -q "$player_choice"
if [ $? -eq 1 ]; then
	echo "You must choose rock paper or scissors"
	exit
fi


if [ $1 ] && [ "$1" == "-no-cheat" ]; then
	echo "y u want no cheat"
else
	if [ $player_choice == "rock" ]; then echo "I cast bigger rock. I win"
	elif [ $player_choice == "paper" ]; then echo "I cast fire. I win"
	else echo "I cast chainsaw. I win"
	fi
fi
