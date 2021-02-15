#!/bin/sh

#ff="fzy -l 100"
ff="fzf"

selected=$(tmux capture-pane -p -S - | $HOME/.tmux-complete/split-input.pl | sort | uniq | $ff)
if [ $? -eq 0 ]; then
    echo -n $selected | tmux load-buffer -b completion -
    tmux paste-buffer -b completion
fi
