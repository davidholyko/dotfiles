#!/usr/bin/env bash

DOTFILES=".dotfiles"

# remove top level .gitconfig and replace with a symbolic link 
rm $HOME/.gitconfig
ln -s $HOME/$DOTFILES/git/.gitconfig $HOME

# remove top level .zshrc and replace with a symbolic link 
rm $HOME/.zshrc
ln -s $HOME/$DOTFILES/.zshrc $HOME

# remove top level command and update its symbolic link
rm /usr/local/bin/change-bg-color
ln -s $HOME/$DOTFILES/scripts/change-bg-color /usr/local/bin

# apply git settings
source ./git/.git-settings;