#!/bin/sh

selected=$(tmux capture-pane -p -S - | $HOME/.tmux-complete/split-input.pl | sort | uniq | fzf)
if [ $? -eq 0 ]; then
    echo -n $selected | tmux load-buffer -b completion -
    tmux paste-buffer -b completion
fi
