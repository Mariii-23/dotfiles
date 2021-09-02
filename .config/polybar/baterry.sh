#!/usr/bin/env bash
# set -euo pipefail
#

# Animation framerate
check_interval=750

while true; do
    charging=$(acpi -b | grep -c "Charging")
    battery_level=$(acpi -b | grep -P -o '[0-9]+(?=%)')
    echo $battery_level
    if [[ $charging -eq 0 ]] ; then
        echo " $battery_level"
        sleep ${check_internavel}
        echo " $battery_level"
        sleep ${check_internavel}
        echo " $battery_level"
        sleep ${check_internavel}
        echo " $battery_level"
        sleep ${check_internavel}
        echo " $battery_level"
        sleep ${check_internavel}
    else
        echo " $battery_level"
        sleep ${check_internavel}
        echo " $battery_level"
        sleep ${check_internavel}
        echo " $battery_level"
        sleep ${check_internavel}
        echo " $battery_level"
        sleep ${check_internavel}
        echo " $battery_level"
        sleep ${check_internavel}
    fi
done
