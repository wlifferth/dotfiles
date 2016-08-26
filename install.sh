#!/bin/zsh
# Get current directory so script can be run from anywhere
# SCRIPTPATH=$PWD
SCRIPTPATH=~/.dotfiles
# Update .dotfiles from git
[ -d "$SCRIPTPATH/.git" ] && git --work-tree="$SCRIPTPATH" --git-dir="$SCRIPTPATH/.git" pull origin master

# Symlink all the things that need to be in the home directory
ln -sf "$SCRIPTPATH/.zshrc" ~
ln -sf "$SCRIPTPATH/.vimrc" ~
ln -sf "$SCRIPTPATH/.vim" ~

