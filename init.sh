#!/usr/bin/env bash

xcode-select --install

if command -v brew; then
    brew update -v
    rm -rf "$(brew --cache)"
else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi


workspace="`pwd`"
# sudo -i sudo -u $USER -i "`pwd`/init.sh" "`pwd`"
if [[ -n $1 ]]; then
    workspace="$1"
    cd "$workspace"
fi

brew install git
brew install mackup
brew install mas

git clone https://github.com/zhiyue/mac-setup-scripts
cd mac-setup-scripts

echo "add brew taps"
chmod +x homebrew/tap.sh
bash homebrew/tap.sh