#!/bin/bash

# Blackspot menu using rofi instead of wofi

choice=$(printf "About\n" | rofi -dmenu -p "Blackspot")

if [ "$choice" = "About" ]; then
    kitty zsh -ic 'fastfetch; echo; echo "Press Enter to close..."; read'
fi

