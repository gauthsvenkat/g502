#!/bin/bash

# Get the device name
device=$(ratbagctl list | grep -E 'Logitech G502|Logitech G502 LIGHTSPEED Wireless Gaming Mouse' | awk -F: '{print $2}' | awk '{$1=$1};1')

# Set the profile (0 is default)
ratbagctl "$device" profile active set 0 --nocommit

# Set the DPI
ratbagctl "$device" dpi set 1200 --nocommit

# Set the polling rate
ratbagctl "$device" rate set 125 --nocommit

# Thumb back, front and mid
ratbagctl "$device" button 3 action set macro +KEY_LEFTCTRL +KEY_LEFTSHIFT KEY_TAB -KEY_LEFTSHIFT -KEY_LEFTCTRL --nocommit
ratbagctl "$device" button 4 action set macro +KEY_LEFTCTRL KEY_TAB -KEY_LEFTCTRL --nocommit
ratbagctl "$device" button 5 action set macro +KEY_LEFTCTRL KEY_W -KEY_LEFTCTRL --nocommit

# Index back, front and mid
ratbagctl "$device" button 6 action set macro KEY_SYSRQ --nocommit
ratbagctl "$device" button 7 action set button 3 --nocommit
ratbagctl "$device" button 8 action set special "profile-cycle-up" --nocommit

# Scroll wheel left and right
ratbagctl "$device" button 9 action set special "wheel-right" --nocommit
ratbagctl "$device" button 10 action set special "wheel-left"

echo "Default profile set for $device"
