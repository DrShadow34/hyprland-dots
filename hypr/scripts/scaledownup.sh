#!/bin/bash
# Script for changing scaling in Hyprland config by binded Win+S button

# Reading number in NUM from file in home folder
NUM=$(cat ~/.scaling)

# If file said 1 then change scaling down   
if [[ "$NUM" -eq 1 ]]; 
	then
		sed -i 's/monitor=HDMI-A-1,3840x2160@120,0x0,1.5,bitdepth,10/monitor=HDMI-A-1,3840x2160@120,0x0,1/' ~/.config/hypr/hyprland.conf
		# change number in file to 1
		sed -i 's/1/0/' ~/.scaling
		
# If file said 0 then do oposite and change scaling up		
	else
	 	sed -i 's/monitor=HDMI-A-1,3840x2160@120,0x0,1/monitor=HDMI-A-1,3840x2160@120,0x0,1.5,bitdepth,10/' ~/.config/hypr/hyprland.conf
	 	# change number in file to 0
		sed -i 's/0/1/' ~/.scaling
	fi
