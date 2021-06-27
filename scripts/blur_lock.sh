#!/bin/bash

scrot -o ~/.config/i3lock/screenshot.png
convert ~/.config/i3lock/screenshot.png -blur 0x05 ~/.config/i3lock/screenshotblur.png
i3lock -n -i ~/.config/i3lock/screenshotblur.png   --pass-media-keys -k --timepos="x +90:y +715" --ringcolor=#009999 --keyhlcolor=#50ffff -C --wrongtext="Wrong BITCH!"crot -o /.config/i3lock/screenshot.png


