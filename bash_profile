#!/usr/bin/env bash

if [ -f ~/.bash_rc ]; then
    . ~/.bash_rc
fi

if [ "$(uname)" == "Darwin" ]; then
    export CLICOLOR=1
    export LSCOLORS=GxFxCxDxBxegedabagaced
fi

if [ -f ~/.bash_profile.local ]; then
    . ~/.bash_profile.local
fi
