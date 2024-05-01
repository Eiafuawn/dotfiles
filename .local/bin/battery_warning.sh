#!/bin/bash

# Battery threshold (percentage)
BATTERY_THRESHOLD=20

# Get the current battery level
BATTERY_LEVEL=$(cat /sys/class/power_supply/BAT1/capacity)

# Check if battery level is below the threshold
if [ "$BATTERY_LEVEL" -le "$BATTERY_THRESHOLD" ]; then
    # Send a notification using Dunst
    dunstify -u critical "Battery Low" "Battery level is ${BATTERY_LEVEL}%"
fi

