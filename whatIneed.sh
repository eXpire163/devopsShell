#!/bin/bash
git pull

# apt-get udpate



#apt-get update && apt-get install -y apt-transport-https

## add required stuff
### kubectl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list


## final update
#apt-get update
## install general
apt-get install -y git ansible bash-completion curl zsh


#### helm
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

## make zsh default
chsh -s $(which zsh)

if ! grep -q "HISTSIZE=10000000" ~/.zshrc; then
    cat >> ~/.zshrc <<EOL
    HISTSIZE=10000000
    SAVEHIST=10000000
    EOL
fi



