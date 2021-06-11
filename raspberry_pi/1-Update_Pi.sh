#!/bin/bash
set -e
##################################################################################################################
# Written to be used on Raspberry pi to update
# Author 	: 	Matthew Bingham
# Website 	: 	http://mbtech.bing14.net
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# This will update repos for Raspberry pi
sudo apt-get update

# This will upgrade Raspberry pi to the latest version
sudo apt-get upgrade -y

# This is to start the cockpit service and enable for it too start on reboot
sudo reboot

###############################################################################################
echo "################################################################"
echo "###################  Basic upgrade of packages  ################"
echo "################################################################"