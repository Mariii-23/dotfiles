#!/usr/bin/env bash

direction=$1

focused_before=$(aerospace list-windows --focused | grep -oE '^[0-9]+')

aerospace focus "$direction"

sleep 0.15

focused_after=$(aerospace list-windows --focused | grep -oE '^[0-9]+')

if [ "$focused_before" = "$focused_after" ]; then
    aerospace focus-monitor "$direction"
fi