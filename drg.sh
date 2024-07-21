#!/bin/bash

# Get the device name
device=$(ratbagctl list | grep -E 'Logitech G502|Logitech G502 LIGHTSPEED Wireless Gaming Mouse' | awk -F: '{print $2}' | awk '{$1=$1};1')

# Set the profile
ratbagctl "$device" profile active set 1 --nocommit

# Set DRG mappings
ratbagctl "$device" button 3 action set macro KEY_2 --nocommit
ratbagctl "$device" button 4 action set macro KEY_1 --nocommit
ratbagctl "$device" button 5 action set macro KEY_M --nocommit
ratbagctl "$device" button 6 action set macro KEY_X

echo "DRG profile set for $device"
