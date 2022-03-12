#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Code Essentials 
brew install git
brew install node
brew install nvm
brew install python

# Programs
brew install visual-studio-code --cask
brew install slack --cask
brew install docker

# Remove outdated versions from the cellar.
brew cleanup
