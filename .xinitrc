#!/usr/bin/env bash

# Load .Xresources
xrdb -merge $HOME/.Xresources

# Set the default window manager
DEFAULT=dwm

# Start `Openbox`/`dwm`
exec dwm-startup
