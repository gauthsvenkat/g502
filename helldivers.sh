#!/bin/bash

# Get the device name
device=$(ratbagctl list | grep -E 'Logitech G502|Logitech G502 LIGHTSPEED Wireless Gaming Mouse' | awk -F: '{print $2}' | awk '{$1=$1};1')

# Set the profile
ratbagctl "$device" profile active set 0 --nocommit

# Set DRG mappings
ratbagctl "$device" button 3 action set macro KEY_3 --nocommit
ratbagctl "$device" button 4 action set macro KEY_4 --nocommit
ratbagctl "$device" button 5 action set macro KEY_K --nocommit
ratbagctl "$device" button 8 action set macro KEY_L

echo "Helldivers profile set for $device"
