#!/usr/bin/env bash
#
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar myBar1 &
polybar myBar2 &

if [[ $(xrandr -q | grep 'HDMI2 connected') ]]; then
    polybar myExternalBar1 &
    polybar myExternalBar2 &
fi

echo "Bars launched..."


