#!/bin/bash

CONFIGS=(
  "$HOME/.config/alacritty/alacritty.toml"
  "$HOME/.config/alacritty/alacrittyTmux.toml"
)

STEP=0.1

# Read current opacity from the first config (source of truth)
current=$(grep "^opacity" "${CONFIGS[0]}" | awk '{print $3}')

if [ -z "$1" ]; then
  echo "Usage: $0 [add|minus]"
  exit 1
fi

case "$1" in
  add)
    new=$(printf "%.2f" "$(echo "$current + $STEP" | bc)")
    # Clamp to max 1.0
    if (( $(echo "$new > 1.0" | bc -l) )); then
      new=1.0
    fi
    ;;
  sub)
    new=$(printf "%.2f" "$(echo "$current - $STEP" | bc)")
    # Clamp to min 0.0
    if (( $(echo "$new < 0.0" | bc -l) )); then
      new=0.0
    fi
    ;;
  *)
    echo "Invalid argument: use 'add' or 'minus'"
    exit 1
    ;;
esac

# Apply to all config files
for CONFIG in "${CONFIGS[@]}"; do
  if [ -f "$CONFIG" ]; then
    sed -i "s/^opacity = .*/opacity = $new/" "$CONFIG"
    echo "Updated $CONFIG"
  else
    echo "File not found: $CONFIG"
  fi
done

echo "New opacity: $new"
