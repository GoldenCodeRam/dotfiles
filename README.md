# Configuration

This is my configuration for the various things used on my desktop. For Neovim configuration see
[this](https://github.com/goldencoderam/nvim-dotfiles) repository.

# i3

I got inspired for most of this configuration by [this](https://itsfoss.com/i3-customization/#customize-i3-lock-screen) post.

## 1. Set display configuration

I like to use `xrandr`, and after that, use `autorandr --save <name>` to set the settings.

## 2. Wallpaper settings

I love [Legends of Runeterra](https://playruneterra.com/en-us/) artists, so all my wallpapers are from that.

## 3. Lock screen

Not that I personally use the lock screen, or that I care that much how it looks. But well...

The building information is taken from: https://github.com/Raymo111/i3lock-color

```bash
# Not looks as good
sudo apt remove i3lock

# Install i3lock-color
# Taken from 

## Install dev dependencies
sudo apt install autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util-dev libxcb-xrm-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev

## Build and install i3lock-color
git clone https://github.com/Raymo111/i3lock-color.git /tmp/i3lock-color
cd /tmp/i3lock-color
./install-i3lock-color.sh
```

## 4. Set theme and other visual configuration

For this, use `lxappearance`:
```bash
sudo apt install lxappearance
```

## 5. Compositor!

For some reason, sometimes the compositor is not working for me, but I like the looks!

```bash
sudo apt install picom
```

## 6. Polybar

I prefer Polybar, over i3blocks or i3bar.
```bash
sudo apt install polybar
```
