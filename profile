export PATH="$HOME/.local/bin:/usr/local/sbin:$PATH"

# Git prompt requires https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
if [ -f ~/.git-prompt.sh ]; then
    . ~/.git-prompt.sh
fi

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\u \W$(__git_ps1 " (%s)") ~ \$ '
