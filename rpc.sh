echo Say rock, paper or scissors
read player_choice
player_choice="${player_choice,,}" # to lower case

choices=(rock paper scissors)
for i in "${!choices[@]}"; do
	if [ "$player_choice" == "${choices[$i]}" ]; then player_index=$i; fi
done

if [ -z $player_index ]; then
	echo "You must choose rock paper or scissors"
	exit
fi


if [ $1 ] && [ "$1" == "--no-cheat" ]; then
	index=$(($RANDOM % 3))
	ai_choice=${choices[$index]}
	for i in "${!choices[@]}"; do
		if [ "$ai_choice" == "${choices[$i]}" ]; then ai_index=$i; fi
	done

	echo "I do $ai_choice"
	if [ $player_choice == $ai_choice ]; then echo "Is tie. Fun game."
	elif [ $(( ( $player_index + 1 ) % 3 )) -eq $ai_index ]; then echo "You weak, I strong, you lose."
	else echo "Hey, you said no cheat"
	fi
else
	if [ $player_choice == "rock" ]; then echo "I cast bigger rock. I win"
	elif [ $player_choice == "paper" ]; then echo "I cast fire. I win"
	else echo "I cast chainsaw. I win"
	fi
fi
