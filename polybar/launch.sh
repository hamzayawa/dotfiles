#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit
# Wait until the processes have been shutdown
while pgrep -x polybar > /dev/null; do sleep 1; done

# Launch
polybar main &
echo "Bars launched..."
