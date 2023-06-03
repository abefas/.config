#!/usr/bin/env bash
#
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar primaryMonitor1 &
polybar primaryMonitor2 &

polybar rightMonitor1 &
polybar rightMonitor2 &

echo "Bars launched..."


