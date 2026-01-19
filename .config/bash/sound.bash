sound() {
    case "$1" in
        usb)
            pactl set-default-sink "$(
                pactl list short sinks \
                | grep 'usb-Generic_USB_Audio' \
                | grep 'Speaker__sink' \
                | awk '{print $2}' \
                | head -n1
            )"
            ;;
        fones)
            pactl set-default-sink "$(
                pactl list short sinks \
                | grep Kingston \
                | awk '{print $2}' \
                | head -n1
            )"
            ;;
        monitor)
            pactl set-default-sink "$(
                pactl list short sinks \
                | grep hdmi-stereo \
                | awk '{print $2}' \
                | head -n1
            )"
            ;;
        *)
            echo "Uso: sound {usb|fones|monitor}"
            ;;
    esac
}

