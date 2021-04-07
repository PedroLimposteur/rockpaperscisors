echo Say rock, paper of scissors
read player_choice
player_choice="${player_choice,,}" # to lower case

choices=(rock paper scissors)
for choice in "${choices[@]}"; do
	if [ "$player_choice" == $choice ]; then ok=1; fi
done

if [ -z $ok ]; then
	echo "You must choose rock paper or scissors"
	exit
fi


if [ $1 ] && [ "$1" == "--no-cheat" ]; then
	echo "y u want no cheat"
else
	if [ $player_choice == "rock" ]; then echo "I cast bigger rock. I win"
	elif [ $player_choice == "paper" ]; then echo "I cast fire. I win"
	else echo "I cast chainsaw. I win"
	fi
fi
