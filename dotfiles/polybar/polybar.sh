#!/usr/bin/env bash

pkill polybar

for m in $(polybar --list-monitors | cut -d":" -f1); do
  if [ $m == "eDP1" ]; then
    TRAY_POS=right polybar --reload main -c /home/bipirate/.config/polybar/config.ini &
  else
    MONITOR=$m polybar --reload extra -c /home/bipirate/.config/polybar/config.ini &
  fi
done

#TRAY_POS=right polybar classic
