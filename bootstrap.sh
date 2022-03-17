#!/usr/bin/env bash

DOTFILES=".dotfiles"

echo ">>> applying .gitconfig"
# remove top level .gitconfig and replace with a symbolic link 
rm $HOME/.gitconfig
ln -s $HOME/$DOTFILES/git/.gitconfig $HOME

echo ">>> applying .zshrc"
# remove top level .zshrc and replace with a symbolic link 
rm $HOME/.zshrc
ln -s $HOME/$DOTFILES/.zshrc $HOME

echo ">>> adding change-bg-color command"
# remove top level command and update its symbolic link
rm /usr/local/bin/change-bg-color
ln -s $HOME/$DOTFILES/scripts/change-bg-color /usr/local/bin

echo ">>> applying git user and email"
# apply git settings
source ./git/.git-settings;

echo ">>> downloading nvm"
# download nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash