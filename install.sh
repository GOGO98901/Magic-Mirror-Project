#!/bin/bash
echo "Magic Mirror Project by Rory Claasen - (MIT 2016-2017)"
echo "Install Script"
echo "Updating repository"

git fetch --all
if [ $? -eq 0 ]; then
    git reset --hard HEAD
    git pull
else
    echo "Git repository MAY not be up to date"
fi

yes | sudo apt-get install x11-xserver-utils unclutter

echo "@lxpanel --profile LXDE-pi
@pcmanfm --desktop --profile LXDE-pi
#@xscreensaver -no-splash
@point-rpi
@xset s off
@xset -dpms
@xset s noblank" > ~/.config/lxsession/LXDE-pi/autostart

echo "@cd $PWD
lxterminal -e \"./start.sh\"" >> ~/.config/lxsession/LXDE-pi/autostart

echo "Making sure that Ruby and Jekyll are installed on this system"
yes | sudo apt-get install ruby-full
sudo gem install jekyll --no-ri --no-rdoc

echo "A reboot is required for this display to work"
# read -r -p "Do you want to reboot now? [Y/n]" response
# if [[ $response =~ ^(yes|y| ) ]] | [ -z $response ]; then
#    your-action-here
# fi
