#!/bin/bash

# setup script

if [ -f ~/.bash_profile ]; then
    echo "renaming old bash_profile file" && mv ~/.bash_profile ~/.bash_profile.old || exit 1
fi

ln -s ~/profile/bash_profile ~/.bash_profile || exit 1

if [ -f ~/.bashrc ]; then
    echo "renaming old bashrc file" && mv ~/.bashrc ~/.bashrc.old || exit 1
fi

ln -s ~/profile/bashrc ~/.bashrc || exit 1

case "$OSTYPE" in
    solaris*) echo "SOLARIS" ;;
    darwin*)  
        [ -f ~/profile/osx/setup.sh ] && ~/profile/osx/setup.sh
        ;; 
    linux*)   echo "LINUX" ;;
    bsd*)     echo "BSD" ;;
    *)        echo "unknown: $OSTYPE" ;;
esac
