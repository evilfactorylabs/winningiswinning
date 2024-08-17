#!/usr/bin/env bash

tmux new-session -s wiw -d
tmux unbind-key d
tmux rename-window -t "wiw:0" "ignore_me"

tmux new-window -t "wiw" -n "start_here"

tmux send-keys -t "wiw:0" "while true; do curl -s -o /dev/null -f http://localhost:4000 && break; sleep 1; done; tmux kill-session -t wiw" C-m

tmux attach
