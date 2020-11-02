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

# i3-gaps
I3_DIR="$HOME/.config/i3"

# Check if the i3 directory exists. If it does we skip this part of the script and inform the user.
if [ -d $I3_DIR ]; then
	echo "[I3] Configuration directory exists. Skipping."
else
	# Symlink the config
	ln -s $DOTS_DIR/i3 $I3_DIR 
fi

# Picom
PICOM_DIR="$HOME/.config/picom"

# Check if the picom directory exists. If it does we skip this part of the script and inform the user.
if [ -d $PICOM_DIR ]; then
	echo "[PICOM] Configuration directory exists. Skipping."
else
	ln -s $DOTS_DIR/picom $PICOM_DIR
fi

# Polybar
POLYBAR_DIR="$HOME/.config/polybar"

# Check if the polybar directory exists. If it does we skip this part of the script and inform the user.
if [ -d $POLYBAR_DIR ]; then
	echo "[POLYBAR] Configuration directory exists. Skipping."
else
	ln -s $DOTS_DIR/polybar $POLYBAR_DIR
fi

# Dunst
DUNST_DIR="$HOME/.config/dunst"

# Check if the dunst directory exists. If it does we skip this part of the script and inform the user.'
if [ -d $DUNST_DIR ]; then
	echo "[DUNST] Configuration directory exists. Skipping."
else
	ln -s $DOTS_DIR/dunst $DUNST_DIR
fi

# Kitty
KITTY_DIR="$HOME/.config/kitty"

# Check if the kitty directory exists. If it does we skip this part of the script and inform the user.
if [ -d $KITTY_DIR ]; then
	echo "[Kitty] Configuration directory exists. Skipping."
else
	ln -s $DOTS_DIR/kitty $KITTY_DIR
fi

# MPD
MPD_DIR="$HOME/.config/mpd"

# Check if the mpd directory exists. If it does we skip this part of the script and inform the user.
if [ -d $MPD_DIR ]; then
	echo "[MPD] Configuration directory exists. Skipping."
else
	ln -s $DOTS_DIR/mpd $MPD_DIR
fi

# ZSH
ZSHRC="$HOME/.zshrc"

# Check if the zshrc file exists. If it does we skip this part of the script and inform the user.
if [ -f $ZSHRC ]; then
	echo "[ZSH] Configuration file exists. Skipping."
else
	ln -s "$DOTS_DIR/zsh/.zshrc" $ZSHRC
fi

# Rofi
ROFI_DIR="$HOME/.config/rofi"

# Check if the rofi directory exists. If it does we skip this part of the script and inform the user.
if [ -d $ROFI_DIR ]; then
	echo "[RDF] Configuration file exists. Skipping."
else
	ln -s $DOTS_DIR/rofi $ROFI_DIR
fi
