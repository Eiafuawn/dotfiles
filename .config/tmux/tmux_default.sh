#!/bin/bash

# Define the tmux session name
SESSION_NAME="default"

# Create a new tmux session if it doesn't exist
if ! tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
    tmux new-session -d -s "$SESSION_NAME"
    # run nvim in the first window
    tmux send-keys -t "$SESSION_NAME:0" 'nvim' C-m

    # Create a window named 'nvim' with 3 panes
    tmux new-window -b -n 'workspace' 
    tmux split-window -v 
    tmux send-keys -t "$SESSION_NAME:0" C-j
    tmux split-window -h
    tmux send-keys -t "$SESSION_NAME:0" 'neofetch' C-m
fi

# Check if the session is attached, if not, attach to it
if ! tmux list-clients -t "$SESSION_NAME" 2>/dev/null | grep -q ':'; then
    tmux attach-session -t "$SESSION_NAME"
fi

