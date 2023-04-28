# Start compositor.
picom -b

# Setup the arandr monitor layout AFTER compositor and BEFORE wallpaper.
# ~/.screenlayout/default_triple_monitor.sh
~/.screenlayout/monitor.sh

# Set wallpaper AFTER compositor.
feh --bg-fill ~/.config/wallpapers

# Launch polybar.
~/.config/polybar/launch.sh

# 
