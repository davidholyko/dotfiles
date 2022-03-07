#!/usr/bin/env bash

function doIt() {
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
		-avh --no-perms . ~;
		source ~/.zshrc;
		source ~/.git-settings;
}

doIt;
unset doIt;