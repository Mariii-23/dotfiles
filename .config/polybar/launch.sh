#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Detecta monitores conectados
connected_monitors=$(xrandr --query | grep " connected" | cut -d ' ' -f1)

echo "Monitores conectados: $connected_monitors"

if echo "$connected_monitors" | grep -q "^eDP-1$"; then
    log_file="/tmp/polybar-example.log"  # nome do log em minúsculas
    polybar example >>"$log_file" 2>&1 &
    # launch_bar "example" "eDP-1"
else
    echo "eDP-1 não conectado, barra 'example' não será iniciada."
fi

bars=("MONITOR-HDMI-1" "MONITOR-HDMI-2" "MONITOR-DP-1" "MONITOR-DP-2"  "MONITOR-DP-3")

for bar in "${bars[@]}"; do
    log_file="/tmp/polybar-${bar,,}.log"  # nome do log em minúsculas
    echo "--- Starting $bar ---" | tee -a "$log_file"
    polybar "$bar" >>"$log_file" 2>&1 &
done

echo "All bars launched!"
