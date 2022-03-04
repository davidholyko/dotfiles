#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Brew Install 
brew install node
brew install python
brew install gnupg
brew install git
brew install mysql
brew install nvm
brew install redis
brew install postgresql
brew install bash-completion

brew install --cask visual-studio-code
brew install --cask slack

# Remove outdated versions from the cellar.
brew cleanup
