#!/bin/env bash
set -x

cd $(dirname $0)

DOTS_DIR=$(pwd)

# Neovim
NVIM_DIR="$HOME/.config/nvim"

# Check if the NVIM directory exists. If it does we skip this part of the script and inform the user.
if [ -d $NVIM_DIR ]; then
	echo "[NVIM] Configuration directory exists. Skipping."
else
	# Symlink the config.
	ln -s $DOTS_DIR/nvim $NVIM_DIR

	# Install dein.vim
	curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/dein_installer.sh
	chmod +x /tmp/dein_installer.sh
	/tmp/dein_installer.sh ~/.local/share/dein
fi

# Fish
FISH_DIR="$HOME/.config/fish"

# Check if the FISH directory exists. If it does we skip this part of the script and inform the user.
if [ -d $FISH_DIR ]; then
	echo "[FISH] Configuration directory exists. Skipping."
else
	# Symlink the config
	ln -s $DOTS_DIR/fish $FISH_DIR
	
	# Install fisher plugins
	fish -c "fisher add dracula/fish rafaelrinaldi/pure"
fi
