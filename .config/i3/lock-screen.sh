#!/usr/bin/env bash

icon="$HOME/Pictures/lock-icon.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 20% -blur 0x3 -scale 500% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -n -i "$tmpbg" --pointer=default -f
