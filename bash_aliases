#!/usr/bin/env bash

alias ll="ls -l"

if [ -f ~/.bash_aliases.local ]; then
    . ~/.bash_aliases.local
fi
