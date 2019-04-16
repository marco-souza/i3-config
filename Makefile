ALL: apply

apply: config desktop_confg.sh
	# copy local config
	cp config desktop_confg.sh ${HOME}/.config/i3
	# copy i3status config
	sudo cp i3status.conf ~/.i3status.conf
	# copy apply desktop config with arandr
	echo "Need to install xrandr"
	sh desktop_confg.sh
	#restart i3
	i3 restart