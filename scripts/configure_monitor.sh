#!/bin/bash

# Function to configure the monitor if it's connected
configure_monitor() {
    # Check if the output is connected
    if xrandr | grep -q "$1 connected"; then
        echo "Configuring monitor $1..."
        xrandr --output "$1" --mode 1920x1080 --rate "$2"
    else
        echo "Monitor $1 is not connected."
    fi
}

# Configure DP-1
configure_monitor "DP-1" 165

# Configure DP-2
configure_monitor "DP-2" 280

