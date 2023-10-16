#!/bin/bash

LOCK="  Lock"
LOGOUT="󰗽  Logout"
POWEROFF="󰐥  Poweroff"
REBOOT="󰑓  Reboot"
SLEEP="  Sleep"

option=$(echo -n "$LOCK
$LOGOUT
$POWEROFF
$REBOOT
$SLEEP" | tofi --prompt-text "󰉁 Powermenu : ")

case "$option" in
    "$LOCK")
        swaylock 
        ;;
    "$LOGOUT")
        # Terminates all of the active sessions
        loginctl terminate-session "" 
        ;;
    "$POWEROFF")
        # Seems like elogind poweroff works only with sudo
        sudo loginctl poweroff 
        ;;
    "$REBOOT")
        # Should also work without sudo
        sudo loginctl reboot 
        ;;
    "$SLEEP")
        swaylock
        hyprctl dispatch dpms off
        loginctl hybrid-sleep 
        ;; 
    *)
        exit 1 
        ;;
esac
