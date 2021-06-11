#!/bin/bash
set -e
##################################################################################################################
# Written to be used on Raspberry pi to install oled for monitoring
# Author 	: 	Matthew Bingham
# Website 	: 	http://mbtech.bing14.net
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
sudo apt-get install python-smbus -y
sudo apt-get install i2c-tools -y
sudo apt-get install python3-pip -y
sudo pip3 install Adafruit_BBIO
sudo pip3 install image
sudo apt-get install libopenjp2-7 -y
sudo apt install libtiff5 -y
./setup-i2c.sh
sleep 5
echo 'System is rebooting try sshing to system in 1 minute'
sleep 10
reboot
###############################################################################################
echo "################################################################"
echo "###################  Install files for oled  ###################"
echo "################################################################"