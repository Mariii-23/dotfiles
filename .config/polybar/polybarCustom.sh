#!/bin/bash
#
case "$1" in

    "DND")
        if [ -e /tmp/.dnd ] && [ "$(pgrep Discord)" ]
        then
            echo "DND"
        else
            echo
        fi
        ;;

    "mic")
        bool=$(pacmd list-sources | grep -A 7 RUNNING | tail -1 | cut -d ' ' -f 2)

        if [ "$bool" == yes ]
        then
            echo 
        else
            echo 
        fi
        ;;
    "battery")
        charging=$(acpi -b | grep -c "Charging")
        battery_level=$(acpi -b | grep -P -o '[0-9]+(?=%)')
        # echo $battery_level
        if [[ $charging -eq 0 ]] ; then
            # echo "  $battery_level"
            echo $battery_level
        else
            echo $battery_level
            # echo "  $battery_level"
        fi
        ;;
    *)
        echo
        ;;
esac
