#!/usr/bin/env sh
# Change the current state of monitor
# States :: right left top bottom "monitor only" "same" "monitor off"
# No arguments -> Next state
# 1 -> Next state
# 0 -> Previous state

# Path to the monitor
path=/tmp/monitor.txt

# Length of states
length=6

# Number of the state: right left top bottom "monitor only" "monitor off"
state=1

# Check if there are a file
if [[ -f $path ]] ; then
    state=$(cat $path)
else
    state=$( shuf -i 1-$((length)) -n 1 )
fi

# Update the state
if [[ $# -eq 1 ]] ; then
    case $1 in
        0) state=$(( $state - 1 ))
           ;;
        *) state=$(( $state + 1 ))
            ;;
    esac
else
    state=$( shuf -i 1-$((length)) -n 1 )
fi

# Check if this state is valid.
if (( "$state" < 1 )) ; then
     state=$((length))
fi

if (( "$state" > "$length"  )) ; then
     state=1
fi

# Update the state
echo $state > $path

echo $state

case $state in
    1)
        notify-send "HDMI" "HDMI set to left"
        herbstclient set_monitors  1920x1080+0+0 1920x1080+1920+0
        xrandr --output "HDMI-1" --auto --rate 120
        xrandr --output "eDP-1" --auto --output "HDMI-1" --left-of "eDP-1"
        ;;
    2)
        notify-send "HDMI" "HDMI set to right"
        herbstclient set_monitors  1920x1080+0+0 1920x1080+1920+0
        xrandr --output "HDMI-1" --auto --rate 120
        xrandr --output "eDP-1" --auto --output "HDMI-1" --right-of "eDP-1"
        ;;
    3)
        notify-send "HDMI" "HDMI set to above"
        herbstclient set_monitors  1920x1080+0+0 1920x1080+0+1080
        xrandr --output "HDMI-1" --auto --rate 120
        xrandr --output "eDP-1" --auto --output "HDMI-1" --above "eDP-1"
        ;;
    4)
        notify-send "HDMI" "HDMI set to below"
        herbstclient set_monitors  1920x1080+0+0 1920x1080+0+1080
        xrandr --output "HDMI-1" --auto --rate 120
        xrandr --output "eDP-1" --auto --output "HDMI-1" --below "eDP-1"
        ;;

    5)
        notify-send "HDMI" "HDMI set to same"
        xrandr --output "HDMI-1" --auto --rate 120
        xrandr --output "eDP-1" --auto --output "HDMI-1" --same-as "eDP-1"
        ;;

    *)
        notify-send "HDMI" "HDMI set to off"
        xrandr --output "HDMI-1" --off
        ;;
esac

herbstclient reload
