# This makefile will setup the fightagc executable and the fightagc.service at user config (more about systemctl/user here: https://wiki.archlinux.org/index.php/Systemd/User).

install:
	@sudo cp ./fightagc.sh /usr/local/bin/fightagc
	@sudo chmod +x /usr/local/bin/fightagc
	@mkdir -p ~/.config/systemd/user/
	@cp ./fightagc.service ~/.config/systemd/user/
	@systemctl --user daemon-reload
