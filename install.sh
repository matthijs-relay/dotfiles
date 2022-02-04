#!/bin/bash

set -euo pipefail

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
cp $HOME/dotfiles/agnoster-light-custom.zsh-theme $HOME/.oh-my-zsh/themes
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions

cp $HOME/.dotfiles/.zshrc $HOME/.zshrc
cat $HOME/.dotfiles/.gitconfig >> $HOME/.gitconfig

