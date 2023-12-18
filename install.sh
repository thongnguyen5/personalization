#!/bin/bash

echo "Install zsh"
yes Yes | sudo apt install zsh
# permission issue
#chsh -s $(which zsh)

echo "Install oh-my-zsh"
yes Yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Install zsh plugins"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search


echo "Setup zsh profile"
sudo mv .zshrc ~/
sudo mv .zshrc_momo ~/

echo "Setup git global config"
bash ./gitconfig.sh

echo "Setup bazel config"
bash ./bazelconfig.sh

