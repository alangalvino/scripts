#!/bin/bash
# You can check your monitors running "xrandr"

while true; do
  scale_factor=`gsettings get org.gnome.desktop.interface text-scaling-factor`

  # Checks if my external monitor 4k monitor is connected
  if xrandr | grep "DP-1-1 connected primary 3840x2160"; then
    if [ "$scale_fator" != "1.3" ]; then gsettings set org.gnome.desktop.interface text-scaling-factor 1.3; fi
  else
    if [ "$scale_fator" != "1.0" ]; then gsettings set org.gnome.desktop.interface text-scaling-factor 1.0; fi
  fi
  sleep 0.2
done
