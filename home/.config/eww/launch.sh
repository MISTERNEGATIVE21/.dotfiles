#!/usr/bin/env bash

pkill eww && eww daemon

case $1 in
    bar)
        config="$HOME/.config/eww"
        dunstify -u critical -t 1000 -a Computer -i icons8-knowledge-64 "Hyprland" "EWW .. lauching top bar."
    ;;
    dash)
    ;;

    *)
        exit 1
    ;;

esac

eww --config "$config" open $1 --screen 0
