#!/bin/bash

echo "Install zsh"
yes Yes | sudo apt install zsh

echo "Install oh-my-zsh"
yes Yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Setup zsh profile"
sudo mv .zshrc ~/
sudo mv .zshrc_momo ~/

echo "Setup git global config"
bash ./gitconfig.sh

