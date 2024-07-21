#!/bin/bash

# Get the device name
device=$(ratbagctl list | grep -E 'Logitech G502|Logitech G502 LIGHTSPEED Wireless Gaming Mouse' | awk -F: '{print $2}' | awk '{$1=$1};1')
profile=1

# Set the profile
ratbagctl "$device" profile active set $profile --nocommit

# Set the DPI
ratbagctl "$device" dpi set 1200 --nocommit

# Set the polling rate
ratbagctl "$device" rate set 125 --nocommit

# Thumb back, front and mid
ratbagctl "$device" button 3 action set macro KEY_0 --nocommit
ratbagctl "$device" button 4 action set macro KEY_9 --nocommit
ratbagctl "$device" button 5 action set macro KEY_8 --nocommit
# Index back, front and mid
ratbagctl "$device" button 6 action set macro KEY_7 --nocommit
ratbagctl "$device" button 7 action set macro KEY_6 --nocommit
ratbagctl "$device" button 8 action set special "profile-cycle-up" --nocommit
# Scroll wheel left and right
ratbagctl "$device" button 9 action set special "wheel-right" --nocommit
ratbagctl "$device" button 10 action set special "wheel-left"

# Set LED behavior. led 0 is the logo, 1 is the DPI lights
ratbagctl "$device" led 0 set mode cycle duration 10000 brightness 255 --nocommit
ratbagctl "$device" led 1 set mode on color 000000

echo "Gaming profile set for $device"
