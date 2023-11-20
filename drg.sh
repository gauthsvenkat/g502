#!/bin/bash

# Set the device name
device="Logitech G502 LIGHTSPEED Wireless Gaming Mouse"

# Set the profile (0 is default)
ratbagctl "$device" profile active set 0 --nocommit

# Set the DPI
ratbagctl "$device" dpi set 1200 --nocommit

# Set the polling rate
ratbagctl "$device" rate set 125 --nocommit

# Reset the button mappings
ratbagctl "$device" button 3 action set macro KEY_2 --nocommit
ratbagctl "$device" button 4 action set macro KEY_1 --nocommit
ratbagctl "$device" button 5 action set macro KEY_M --nocommit
ratbagctl "$device" button 6 action set macro KEY_X

echo "drg profile set for $device"

