#!/usr/bin/env bash
# set the battery charging thresholds to extend battery lifespan
# 
# set_battery_thresholds 0 96 100
# or just "set_battery_thresholds"

echo ${2:-40} > /sys/class/power_supply/BAT${1:-0}/charge_start_threshold
echo ${3:-80} > /sys/class/power_supply/BAT${1:-0}/charge_stop_threshold

