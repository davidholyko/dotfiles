#!/usr/bin/env bash

function bootstrap() {
	# rsync syncs the following files to a source destination.
	# https://linuxize.com/post/how-to-use-rsync-for-local-and-remote-data-transfer-and-synchronization/
	# copies all folders from this parent 'dotfiles' into '~' directory
	rsync \
		--exclude ".DS_Store" \
	    --exclude ".git/" \
		--exclude ".git-settings.sample" \
		--exclude ".gitignore" \
		--exclude ".osx" \
		--exclude ".vscode" \
		--exclude "bootstrap.sh" \
		--exclude "brew.sh" \
		--exclude "dko.terminal" \
		--exclude "README.md" \
		--exclude "change-bg-color" \
		--exclude "change-bg-color.scpt" \
		-avh --no-perms . ~;
		source ~/.git-settings;
}

bootstrap;
unset bootstrap;

# make change-bg-color an executable file
# and move it to top level binary to be executed from anywhere
sudo chmod a+rx ./change-bg-color
sudo ln -s $HOME/.dotfiles/change-bg-color /usr/local/bin