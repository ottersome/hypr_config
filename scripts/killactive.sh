#!/bin/bash

# Fetch the active window data as JSON and extract the title
ACTIVE_TITLE=$(hyprctl activewindow -j | jq -r '.title')

# Exit silently if no window is currently active
if [ -z "$ACTIVE_TITLE" ] || [ "$ACTIVE_TITLE" == "null" ]; then
    exit 0
fi

hyprctl dispatch 'hl.dsp.window.close()'
