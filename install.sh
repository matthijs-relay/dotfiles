#!/bin/bash

set -euo pipefail

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
curl -o $HOME/.oh-my-zsh/themes/agnoster-light.zsh-theme https://raw.githubusercontent.com/mkolosick/agnoster-light/master/agnoster-light.zsh-theme
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions

cp $HOME/.dotfiles/.zshrc $HOME/.zshrc
cat $HOME/.dotfiles/.gitconfig >> $HOME/.gitconfig

