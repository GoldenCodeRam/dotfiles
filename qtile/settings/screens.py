from libqtile import bar, widget
from libqtile.config import Screen
from libqtile.lazy import lazy

from settings.colors import colors

def generateScreen1():
    return Screen(
        top=bar.Bar(
            [
                widget.CurrentLayout(),
                widget.GroupBox(),
                widget.Prompt(),
                widget.WindowName(),
                widget.Chord(
                    chords_colors={
                        "launch": ("#ff0000", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                widget.TextBox("default config", name="default"),
                widget.TextBox("Press &lt;M-r&gt; to spawn", foreground="#d75f5f"),
                widget.PulseVolume(
                    mouse_callbacks={
                        "Button3": lazy.spawn("pavucontrol"),
                    },
                ),
                widget.Clock(
                    format=" %I:%M %p",
                    background=colors["yellow"],
                    foreground=colors["surface0"],
                ),
                widget.QuickExit(),
            ],
            26,
            margin=[5, 0, 5, 0]
            # border_width=[2, 0, 2, 0],  # Draw top and bottom borders
            # border_color=["ff00ff", "000000", "ff00ff", "000000"]  # Borders are magenta
        ),
    )
