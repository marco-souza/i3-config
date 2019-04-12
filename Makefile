ALL: apply

apply: config desktop_confg.sh
	echo "Need to install xrandr"
	cp config desktop_confg.sh ${HOME}/.config/i3
	sh desktop_confg.sh