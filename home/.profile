# Exports
export EDITOR=/usr/bin/vim

YELLOW='\e[0;93m'
RED='\e[1;31m'
CYAN='\e[1;36m'
GREEN='\e[1;32m'

### Colored shell, grep, ls, etc.
export PS1="\[$CYAN\]\u\[$GREEN\] \w \[\e[$GREEN\]> \[\e[0m\]"
# alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

### Enable bash completions
if [[ -e /etc/profile.d/bash_completion.sh ]]; then
    source /etc/profile.d/bash_completion.sh
fi

export BASH_SILENCE_DEPRECATION_WARNING=1
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home

# Aliases
alias ga="git add "
alias gaa="git add ."
alias gb="git branch"
alias gbc=" gb --show-current"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gcod="git checkout develop"
alias gd="git diff"
alias gdc="git diff --cached"
alias gp="git push"
alias gpo="git push origin"
alias gs="git status"
alias gsco="git sparse-checkout"
alias gst="git stash"
alias gstd="git stash drop"
alias gstl="git stash list"
alias gstp="git stash push"
alias gr="git remote -v"
alias grb="git rebase -i HEAD~"

alias grepr="grep --color -nir"
alias grepri="grep --color -nir"

alias sshc="ssh coder.alpine"

# Functions
gaf() {
  ga "**/*/$1"
}
