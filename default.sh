#!/bin/bash

# Set the device name
device="Logitech Gaming Mouse G402"

# Reset the button mappings
ratbagctl "$device" button 0 action set button 1 --nocommit
ratbagctl "$device" button 1 action set button 2 --nocommit
ratbagctl "$device" button 2 action set button 3 --nocommit
ratbagctl "$device" button 3 action set macro +KEY_LEFTCTRL +KEY_LEFTSHIFT KEY_TAB -KEY_LEFTSHIFT -KEY_LEFTCTRL --nocommit
ratbagctl "$device" button 4 action set macro +KEY_LEFTCTRL KEY_TAB -KEY_LEFTCTRL --nocommit
ratbagctl "$device" button 5 action set macro +KEY_LEFTCTRL KEY_W -KEY_LEFTCTRL --nocommit
ratbagctl "$device" button 6 action set macro KEY_SYSRQ --nocommit
ratbagctl "$device" button 7 action set button 3

echo "Default profile set for $device"
