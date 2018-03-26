#!/bin/bash
echo "Install brew"
sorurce brew.sh BREW_INSTALL

echo "setting up oh my zhs"
source zsh.sh

echo "Making Sym Link..."
source makesymlinks.sh 

echo "Install brew packages"
source brew.sh INSTALL_BREWFILE

echo "Initialize git hooks"
source hooks.sh

echo "Setting Up Macbook defaults"
source macdefaults.sh

echo "Macbook ready for dev work"

# echo "Making Brewfile from installed brew packages"
# source brew.sh MAKE_BREWFILE
