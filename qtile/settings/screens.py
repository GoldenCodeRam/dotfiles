import os
from libqtile import bar, widget, qtile
from libqtile.config import Screen
from libqtile.lazy import lazy

from settings.colors import colors

def open_powermenu():
    home = os.path.expanduser("~")
    qtile.cmd_spawn(".config/rofi/powermenu/type-1/powermenu.sh")

def generateScreen1():
    return Screen(
        top=bar.Bar(
            [
                widget.GroupBox(),
                widget.Prompt(),
                widget.WindowName(),
                widget.Chord(
                    chords_colors={
                        "launch": ("#ff0000", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                widget.PulseVolume(
                    mouse_callbacks={
                        "Button3": lazy.spawn("pavucontrol"),
                    },
                ),
                widget.Clock(
                    format="%I:%M %p",
                    background=colors["yellow"],
                    foreground=colors["surface0"],
                ),
                widget.TextBox(
                    text="⏻",
                    fontsize=15,
                    padding=20,
                    font="Font Awesome 6 Free Solid",
                    mouse_callbacks={
                        "Button1": lambda: open_powermenu(),
                    },
                ),
            ],
            26,
            margin=[5, 0, 5, 0]
            # border_width=[2, 0, 2, 0],  # Draw top and bottom borders
            # border_color=["ff00ff", "000000", "ff00ff", "000000"]  # Borders are magenta
        ),
    )
