#!/bin/bash

# one time install/setup script

# install homebrew
brew --prefix > /dev/null 2>&1
if [ $? -ne 0 ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew install gpg
brew install jq
brew install git
brew install tig
brew install bash-completion
brew install maven
brew install scala
brew install sbt

mkdir -p " ~/Library/Application Support/Karabiner"
ln ln -s ~/profile/osx/karabiner-settings.xml ~/Library/Application\ Support/Karabiner/private.xml