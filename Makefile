ALL: apply

apply: config desktop_config.sh
	# copy local config
	cp -r config desktop_config.sh ${HOME}/.config/i3/
	# copy apply desktop config with arandr
	echo "Need to install xrandr"
	sh desktop_config.sh
	#restart i3
	i3 restart || true # avoid restart error