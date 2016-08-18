#!/bin/bash
init() {
	cd /home/pi/git/mirror/
	git pull
}
server() {
	lxterminal -e ./startserver.sh
}
display() {
	sleep 10
	sudo -u pi epiphany-browser -a --profile ~/.config http://localhost:8000 --display=:0 &
	sleep 30s;
	xte "key F11" -x:0
}
init
server &
display
read -p "Press [Enter] key to exit script..."
