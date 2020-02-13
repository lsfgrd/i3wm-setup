#!/bin/bash
if xrandr | grep -q 'eDP1 connected' && xrandr | grep -q 'HDMI1 connected'
then
	xrandr --auto && xrandr --output eDP1 --auto --left-of HDMI1
fi

if xrandr | grep -q 'eDP1 connected' && xrandr | grep -q 'HDMI1 disconnected'
then
	xrandr --output HDMI1 --off 
fi
