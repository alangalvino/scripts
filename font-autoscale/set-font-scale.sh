#!/bin/bash

# Get the Real Username
RUID=$(who | awk 'FNR == 1 {print $1}')

# Translate Real Username to Real User ID
RUSER_UID=$(id -u ${RUID})

function gset-font-scale() {
  # Set gsettings for the Real User
  sudo -u ${RUID} DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/${RUSER_UID}/bus" /usr/bin/gsettings set org.gnome.desktop.interface text-scaling-factor ${1} 
}

gset-font-scale $1
