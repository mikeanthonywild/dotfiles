#!/usr/bin/env bash

# Aliases
alias ll="ls -l"

export GPG_TTY=$(tty)

# Bash completion for git
# Requires https://github.com/git/git/tree/master/contrib/completion
if [ -r ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi
if [ -r ~/.git-prompt.sh ]; then
    . ~/.git-prompt.sh
fi
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\u \W$(__git_ps1 " (%s)") ~ \$ '

# VI-stytle input
set -o vi
