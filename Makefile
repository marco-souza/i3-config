ALL: apply

apply: config desktop_config.sh
	# copy local config
	cp -r config desktop_config.sh ${HOME}/.config/i3/
	# copy scripts config
	rm -rf ~/.config/i3/scripts
	cp -r ./scripts ~/.config/i3/scripts
	# copy i3blocks config
	cp i3blocks.conf ~/.i3blocks.conf
	# copy apply desktop config with arandr
	echo "Need to install xrandr"
	sh desktop_config.sh
	#restart i3
	i3 restart || true # avoid restart error