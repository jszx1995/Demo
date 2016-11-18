#!/bin/bash
dialog --no-shadow --title "Questioneaire" --msgbox "Welcome to my simple survey" 9 18
dialog --no-shadow --title "Confirm" --yesno "Are you willing to take part?" 9 18
if [ $? != 0 ];
then
	dialog --no-shadow --infobox "Thank you anyway" 5 20
	sleep 2
	dialog --clear
	exit 0
fi

dialog --no-shadow --title "Questionnaire" --inputbox "Please enter your name" 9 20 2>_1.txt
Q_NAME=$(cat _1.txt)

dialog --no-shadow --menu "$Q_NAME, what music do you like best?" 15 30 4 1 "Classical" 2 "Jazz" 3 "Country" 4 "Other" 2>_1.txt
Q_MUSIC=$(cat _1.txt)

if [ "$Q_MUSIC" = "1" ];
then
	dialog --no-shadow --title "Likes Classical" --msgbox "Good choice!" 12 25
else
	if [ "$Q_MUSIC" = "2" ];
	then
		dialog --no-shadow --title "Likes Jazz" --msgbox "Good choice!" 12 25
	else
		if [ "$Q_MUSIC" = "3" ];
		then
			dialog --no-shadow --title "Likes Country" --msgbox "Good choice!" 12 25
		else
			dialog --no-shadow --title "Doesn't like!" --msgbox "Shame" 12 25
		fi
	fi
fi

sleep 2
dialog --clear
exit 0
