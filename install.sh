#!/bin/bash

SCRIPT_DIR=$(dirname "$(realpath "$0")")

echo "Updating system and installing required packages..."
sudo apt update && sudo apt upgrade -y
sudo apt install -y kitty w3m w3m-img imagemagick neofetch


mkdir -p ~/.config/kitty
mkdir -p ~/.config/neofetch

if [ -d ~/.config/kitty ]; then
    echo "Renaming existing Kitty configuration directory to kitty.backup..."
    mv ~/.config/kitty ~/.config/kitty.backup
fi
echo "Copying the entire Kitty configuration directory from $SCRIPT_DIR/kitty/..."
cp -rf "$SCRIPT_DIR/kitty" ~/.config/


if [ -d ~/.config/neofetch ]; then
    echo "Renaming existing Neofetch configuration directory to neofetch.backup..."
    mv ~/.config/neofetch ~/.config/neofetch.backup
fi
echo "Copying the entire Neofetch configuration directory from $SCRIPT_DIR/neofetch/..."
cp -rf "$SCRIPT_DIR/neofetch" ~/.config/


if [ -f ~/.bashrc ]; then
    echo "Renaming existing .bashrc to .bashrc.backup..."
    mv ~/.bashrc ~/.bashrc.backup
fi
echo "Copying the .bashrc from $SCRIPT_DIR/.bashrc to ~/..."
cp "$SCRIPT_DIR/.bashrc" ~/

echo "Setting up Kitty's image display for Neofetch..."
echo "kitty +kitten icat" >> ~/.bashrc

echo "Enabling image display in Neofetch..."
echo "neofetch --image" >> ~/.bashrc

echo "Installation complete!"
echo "1. Restart your terminal or run 'source ~/.bashrc' to apply the changes."
echo "2. Run 'neofetch' to see the image displayed in Kitty terminal."
