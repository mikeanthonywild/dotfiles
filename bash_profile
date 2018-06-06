#!/usr/bin/env bash

if [ -f ~/.bash_rc ]; then
    . ~/.bash_rc
fi


if [ "$(uname)" == "Darwin" ]; then
    export CLICOLOR=1
    export LSCOLORS=GxFxCxDxBxegedabagaced
fi

# Add keys to agent
ssh-add
