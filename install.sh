#!/bin/zsh
# Get current directory so script can be run from anywhere
# SCRIPTPATH=$PWD
SCRIPTPATH=~/.dotfiles
# Update .dotfiles from git
[ -d "$SCRIPTPATH/.git" ] && git --work-tree="$SCRIPTPATH" --git-dir="$SCRIPTPATH/.git" pull origin master

# Symlink all the things that need to be in the home directory
ln -sf "$SCRIPTPATH/.zshrc" ~
echo '.zshrc symbolically linked to the home directory'
ln -sf "$SCRIPTPATH/.vimrc" ~
echo '.vimrc symbolically linked to the home directory'
ln -sf "$SCRIPTPATH/.vim" ~
echo '.vim symbolically linked to the home directory'
ln -sf "$SCRIPTPATH/.gitconfig" ~
echo '.gitconfig symbolically linked to the home directory'
ln -sf "$SCRIPTPATH/.tmux.conf" ~
echo '.tmux.conf symbolically linked to the home directory'
echo '.dotfiles succesfully installed!'
