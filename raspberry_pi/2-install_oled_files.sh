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
sudo i2cdetect -y 1
sudo python3 -m pip install --upgrade pip setuptools wheel
git clone https://github.com/adafruit/Adafruit_Python_SSD1306.git
cd Adafruit_Python_SSD1306/
sudo python3 setup.py install
python3 stats.py

###############################################################################################
echo "################################################################"
echo "###################  Install files for oled  ###################"
echo "################################################################"