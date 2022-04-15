#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/myconfigs/polybar"

# Terminate already running bar instances
# killall -q polybar

# Wait until the processes have been shut down
# while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
if pgrep -u $UID -x polybar >/dev/null; then
    killall -q polybar

else 
    polybar -q main -c ~/myconfigs/polybar/config.ini &
fi
# while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
# polybar -q main -c "$DIR"/config.ini &
