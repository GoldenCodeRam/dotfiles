# Start compositor.
# There is already another one being launched.
# picom -b

# Setup the arandr monitor layout AFTER compositor and BEFORE wallpaper.
# ~/.screenlayout/default_triple_monitor.sh
~/.screenlayout/monitor.sh

# Set wallpaper AFTER compositor.
feh --randomize --bg-fill ~/.config/wallpapers

# Launch polybar.
# Do not launch it from here, because we need to reload them some times
# ~/.config/polybar/launch.sh
