## David Ko Dotfiles

#### Setup

```
cd ~ && git clone https://github.com/davidholyko/dotfiles.git .dotfiles && cd ~/.dotfiles && source bootstrap.sh
```

##### Terminal Text Colors

<img width="776" alt="Screen Shot 2020-07-14 at 10 40 55 PM" src="https://user-images.githubusercontent.com/20917792/87497216-23807e80-c623-11ea-9fd3-f835812e6edb.png">

##### Install Manually

```
cd ~/.dotfiles && source bootstrap.sh
```

or with NPM command

```
npm run setup-dotfiles
```

##### Install Homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

##### Install with Homebrew

```
cd ~/.dotfiles && source brew.sh
```

or with NPM command

```
npm run setup-brew
```

#### Extras

Don't forget to replace the information in .extras with your own information

.extra file:

```
# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="David Ko"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="david.holy.ko@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```
