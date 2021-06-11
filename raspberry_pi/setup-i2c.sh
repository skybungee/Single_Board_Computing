#!/bin/bash
# file: setup-i2c.sh
#
# This script will enable I2C and install i2c-tools on your Raspberry Pi 
#
 
# check if sudo is used
if [ "$(id -u)" != 0 ]; then
  echo 'Sorry, you need to run this script with sudo'
  exit 1
fi
 
# enable I2C on Raspberry Pi
if grep -q 'i2c-dev' /etc/modules; then
  echo 'Seems i2c-dev module already exists, skip this step.'
else
  echo 'Adding i2c-dev module to the modules file'
  echo 'i2c-dev' >> /etc/modules
fi
echo '>>> Enable I2C'
if grep -q 'dtparam=i2c1=on' /boot/config.txt; then
  echo 'Seems i2c1 parameter already set, skip this step.'
else
  echo 'dtparam=i2c1=on' >> /boot/config.txt
fi
if grep -q 'dtparam=i2c_arm=off' /boot/config.txt; then
  echo 'Seems i2c1 parameter is set to off, commenting out line.'
  sed -e '/dtparam=i2c_arm=off/ s/^#*/#/' -i /boot/config.txt
else
  echo 'Seems i2c parameter is set to on already'
fi
if grep -q 'dtparam=i2c_arm=on' /boot/config.txt; then
  echo 'Seems i2c_arm parameter already set, skip this step.'
else
  echo 'dtparam=i2c_arm=on' >> /boot/config.txt
fi

# install i2c-tools
echo '>>> Install i2c-tools'
if hash i2cget 2>/dev/null; then
  echo 'Seems i2c-tools is installed already, skip this step.'
else
  apt-get install -y i2c-tools
fi