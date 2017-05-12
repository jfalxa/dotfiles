#!/bin/bash

# prepare x config
xrdb -merge ~/.Xresources

# set compose key
setxkbmap -option compose:ralt

# for a readable hidpi screen
xrandr --dpi 150

# start urxvt daemon
urxvtd -q -o -f

# start i3
exec i3

