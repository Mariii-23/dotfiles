#!/usr/bin/env bash
constant_volume=5

volumeUp() {
  volumeUnMute
  pactl set-sink-volume @DEFAULT_SINK@ +$((constant_volume))%
}

volumeDown() {
  volumeUnMute
  pactl set-sink-volume @DEFAULT_SINK@ -$((constant_volume))%
}

volumeUnMute() {
  pactl set-sink-mute @DEFAULT_SINK@ false
}

volumeMute() {
  pactl set-sink-mute @DEFAULT_SINK@ true
}


help_msg="\n
up      --- Volume up \n
down    --- Volume down \n
mute    --- Mute volume \n
unmute  --- Un Mute volume \n
"

case $1 in
    up)
        volumeUp
    ;;

    down)
        volumeDown
    ;;

    +)
        volumeUp
    ;;

    -)
        volumeDown
    ;;

    mute)
        volumeMute

    ;;

    unmute)
        volumeUnMute
    ;;

    *)
        echo -e $help_msg
    ;;

esac
