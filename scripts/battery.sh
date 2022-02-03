#!/bin/bash

# Steps:
# 1. Save this script to battery_notify.sh
# 2. Edit the 'alarm' variable to point to your sound file of choice
# 3. Give execution permission: chmod +x battery_notify.sh
# 4. Run the script to test it. If happy, add to your startup applications.

# Set the alert tone for battery, or leave it as empty quotes.
# .mp3 or .ogg audio file

alarm="~/dotfiles/music/117718713.ogg"

# Notify when below this percentage
warning_level=40
full_level=75

# How often to check battery status, in minutes
check_interval=2

while true; do
  battery_level=$(acpi -b \
    | cut -d, -f2 | cut --characters=2,3,4 \
    | sed 's/%//g')
  charging=$(acpi -b | grep -c "Charging")

  # When battery is low, and not already charging
  if [ $battery_level -lt $warning_level ] &&
     [ $charging -eq 0 ]
  then
    play -q -v 0.50 "$alarm" &
    mpv "$alarm" &
    notify-send " Low battery: ${battery_level}% " " Plug into mains power " -t 8000 -i ~/dotfiles/Screenshot/empty-battery.png
  else if [ $battery_level -ge $full_level ] &&
          [ $charging != 0 ]
  then
      play -q -v 0.50 "$alarm" &
      mpv "$alarm" &
      notify-send " Full battery: ${battery_level}% " " Plug out mains power " -t 8000 -i ~/dotfiles/Screenshot/battery_full.png
  fi
  fi
  sleep ${check_interval}m
done
