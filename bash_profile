#!/usr/bin/env bash

if [ -r ~/.profile ]; then
    . ~/.profile
fi

# SSH agent
if [ -z "${SSH_AUTH_SOCK}" ]; then
    eval $(ssh-agent)
    ssh-add
fi

if [ -r ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -r ~/.bash_profile.local ]; then
    . ~/.bash_profile.local
fi
