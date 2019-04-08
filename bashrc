#!/usr/bin/env bash

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
        # Shell is non-interactive.  Be done now!
        return
fi

# macOS pretty colours
if [ "$(uname)" == "Darwin" ]; then
    export CLICOLOR=1
    export LSCOLORS=GxFxCxDxBxegedabagaced
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Bash completion
if [ "$(uname)" == "Darwin" ]; then
    # git completion for macOS requires `brew install git bash-completion`
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi
else
    # git completion for Linux requires https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
    if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
    fi
fi

if [ -f ~/.bash_rc.local ]; then
    . ~/.bash_rc.local
fi
