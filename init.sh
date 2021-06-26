#!/usr/bin/env bash

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
git clone