#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

#if type "xrandr"; then
#  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#    if [$m == "HDMI1"] then
#      echo "---" | tee -a /tmp/polybar2.log
#      polybar external 2>&1 | tee -a /tmp/polybar2.log & disown
#    fi
#  done
#fi

#echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar external 2>&1 | tee -a /tmp/polybar2.log & disown

echo "---" | tee -a /tmp/polybar1.log
polybar mybar 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."
