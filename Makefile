ALL: apply

apply: config desktop_config.sh
	# copy local config
	cp -r config desktop_config.sh ${HOME}/.config/i3/
	# copy i3blocks config
	cp i3blocks.conf ~/.i3blocks.conf
	# copy apply desktop config with arandr
	echo "Need to install xrandr"
	sh desktop_config.sh
	#restart i3
	i3 restart || true # avoid restart error