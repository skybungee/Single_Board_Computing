#!/bin/bash
# Purpose: Create a countdown clock for 10 seconds
# Author: Matthew Bingham under GPL v2.x+
# --------------------------------------------------------
# Set me first #
row=2
col=2
countdown() {
        msg="System will reboot in 10 Seconds unless Ctl+C is pressed..."
        clear
        tput cup $row $col
        echo -n "$msg"
        l=${#msg}
        l=$(( l+$col ))
        for i in {10..01}
        do
                tput cup $row $l
                echo -n "$i"
                sleep 1
        done
}
echo "Completed countdown System rebooting Now...."
sudo reboot