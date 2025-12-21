#!/bin/bash

chosen=$(echo -e "  Apagar\n  Reiniciar\n Suspender\n  Bloquear\n  Cerrar sesión" | rofi -dmenu -show-icons -theme /home/elros/.local/share/rofi/themes/rounded-blue-dark.rasi -p "Salir")


case "$chosen" in
    " Apagar") systemctl poweroff ;;
    " Reiniciar") systemctl reboot ;;
    " Suspender") systemctl suspend ;;
    " Bloquear") loginctl lock-session ;;
    " Cerrar sesión") hyprctl dispatch exit ;;
    *) exit 1 ;;
esac
