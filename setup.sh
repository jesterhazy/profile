#!/bin/bash

# setup script

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
