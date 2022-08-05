#!/usr/bin/env sh

export EDITOR=vim
export PAGER=less

if [ -r ~/.profile.local ]; then
    . ~/.profile.local
fi
