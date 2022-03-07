## David Ko Dotfiles

### Setup

This repo was made for `zsh` shell for MacOS. To double check that your computer is on zsh, use this terminal command:

```
echo $SHELL
```

Run command below to clone repo and run terminal script.

```
cd ~ && git clone https://github.com/davidholyko/dotfiles.git .dotfiles && cd ~/.dotfiles && source bootstrap.sh
```

#### Terminal Text Colors

<img width="776" alt="Screen Shot 2020-07-14 at 10 40 55 PM" src="https://user-images.githubusercontent.com/20917792/87497216-23807e80-c623-11ea-9fd3-f835812e6edb.png">

#### Terminal Size and Font

Copy theme into Downloads

```
cp dko.terminal ~/Downloads/dko.terminal
```

Follow [this guide](https://apple.stackexchange.com/questions/27878/how-can-i-install-themes-for-terminal) to apply MacOS terminal themes.

#### Install Manually

```
# Install terminal setup
cd ~/.dotfiles && source bootstrap.sh
# Brew install packages
cd ~/.dotfiles && source brew.sh
```

#### Install Homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### Update Git Author and Commiter Settings

Don't forget to replace the information in .extras with your own information

Run terminal command

```
cp .git-settings.sample .git-settings
```

### Inspired by

https://github.com/mathiasbynens/dotfiles
