#!/usr/bin/env bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar --reload --quiet top -c ~/.config/polybar/config.ini & disown
polybar --reload --quiet bottom -c ~/.config/polybar/config.ini & disown
