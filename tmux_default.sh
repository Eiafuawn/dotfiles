#!/bin/bash

# Define the tmux session name
SESSION_NAME="default"

# Create a new tmux session if it doesn't exist
if ! tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
    tmux new-session -d -s "$SESSION_NAME"

    # Create a window named 'nvim' with 3 panes
    tmux new-window -t "$SESSION_NAME:1" -n 'nvim'
    tmux split-window -h
    tmux split-window -v

    # Set the default layout for the 'nvim' window to tiled
    tmux select-layout tiled
fi

# Check if the session is attached, if not, attach to it
if ! tmux list-clients -t "$SESSION_NAME" 2>/dev/null | grep -q ':'; then
    tmux attach-session -t "$SESSION_NAME"
fi

