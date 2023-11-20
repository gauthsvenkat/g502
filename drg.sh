#!/bin/bash

# Set the device name
device="Logitech Gaming Mouse G402"

# Reset the button mappings
ratbagctl "$device" button 3 action set macro KEY_2 --nocommit
ratbagctl "$device" button 4 action set macro KEY_1 --nocommit
ratbagctl "$device" button 5 action set macro KEY_M --nocommit
ratbagctl "$device" button 6 action set macro KEY_X

echo "drg profile set for $device"

