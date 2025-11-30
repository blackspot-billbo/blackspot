#!/bin/bash

# Toggle Blackspot left system panel (Waybar instance)

if pgrep -f "waybar .*blackspot-panel-left.json" >/dev/null; then
    # Panel is running → kill it
    pkill -f "waybar .*blackspot-panel-left.json"
else
    # Panel not running → start it
    waybar -c "$HOME/.config/waybar/blackspot-panel-left.json" \
           -s "$HOME/.config/waybar/blackspot-panel-left.css" &
fi

