# This makefile will setup the font-autoscale executable and the font-autoscale.service at user config (more about systemctl/user here: https://wiki.archlinux.org/index.php/Systemd/User).

install:
	@sudo cp ./font-autoscale.sh /usr/local/bin/font-autoscale
	@sudo chmod +x /usr/local/bin/font-autoscale
	@mkdir -p ~/.config/systemd/user/
	@cp ./font-autoscale.service ~/.config/systemd/user/
	@systemctl --user daemon-reload
	@systemctl --user enable font-autoscale
