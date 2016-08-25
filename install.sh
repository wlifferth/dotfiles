#!/bin/zsh
# Get current directory so script can be run from anywhere
export DOTFILES_DIR
SCRIPTPATH=$(dirname "$SCRIPT")
DOTFILES_DIR=$SCRIPTPATH

# Update .dotfiles from git
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Symlink all the things that need to be in the home directory
ln -sf "$DOTFILES_DIR/.dotfiles/.zshrc" ~
ln -sf "$DOTFILES_DIR/.dotfiles/.vimrc" ~
ln -sf "$DOTFILES_DIR/.dotfiles/.vim" ~

