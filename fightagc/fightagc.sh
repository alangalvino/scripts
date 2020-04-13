#!/bin/bash
# The purpose of this script is solve this issue: https://bugs.chromium.org/p/chromium/issues/detail?id=435112
# From time to time it will set microphone volume to 80%
# To find the source name of your headset run "pacmd list | grep name:"

while true; do
    pacmd set-source-volume bluez_source.00_16_94_3B_BB_D7.headset_head_unit 52500 > /dev/null
    sleep 0.1
done
