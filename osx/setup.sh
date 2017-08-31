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
brew cask install anaconda
brew cask install sublime-text
brew cask install font-source-code-pro
brew cask install karabiner-elements
brew cask install macdown

ln -s ~/profile/osx/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
mkdir -p ~/.config/karabiner && ln -s ~/profile/osx/karabiner.json ~/.config/karabiner/karabiner.json
