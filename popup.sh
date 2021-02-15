#!/bin/sh

while getopts 'iy' c; do
	case $c in
	  i) tmux display-popup -KER "$HOME/.tmux-complete/complete.sh";;
	  y) tmux display-popup -KER "$HOME/.tmux-complete/yank.sh";;
	  *) tmux display-popup -KER "$HOME/.tmux-complete/complete.sh";;
	esac
done
