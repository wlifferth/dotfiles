# Don't have the shell check for mail
unset MAIL

SCRIPTPATH=~/dotfiles

#######################################
# ALIASES                             #
#######################################
alias sudo='sudo ' # This makes the shell check for aliases _after_ sudo
unalias -m '*' # Get rid of all other aliases

# General CL Utilities
alias c='clear'
alias la="ls -FHG -la"
alias ll="ls -lh"
alias lla="ls -lah"
export CLICOLOR=1
alias view="vim -R"
alias l='less'
alias dum="du -shc .* * | sort -hr"

# GIT
alias g=git
alias ga='git add'
alias gaa='git add --all'
alias gd='git diff'
alias gdca='git diff --cached'
alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gfo='git fetch origin'
alias ggpush='git push origin $(git_current_branch)'
alias ggsup='git branch --set-upstream-to=origin/$(git_current_branch)'
alias glo='git log --oneline --decorate'
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias glp=_git_log_prettily
alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'

#######################################
# INPUT                               #
#######################################

# Vim-like key bindings
set -o vi
bind '"jj":vi-movement-mode'

# Tab completion if it's there
if [ -f /etc/bash_completion ]; then
 . /etc/bash_completion
fi

#######################################
# PROMPT COLORS                       #
#######################################
# Color shortcuts
RED='\e[0;30m'
LIGHTRED='\e[1;31m'

GREEN='\e[0;32m'
LIGHTGREEN='\e[1;32m'

YELLOW='\e[0;33m'
LIGHTYELLOW='\e[1;33m'

BLUE='\e[0;34m'
LIGHTBLUE='\e[1;34m'

PURPLE='\e[0;35m'
LIGHTPURPLE='\e[1;35m'

CYAN='\e[0;36m'
LIGHTCYAN='\e[1;36m'

GRAY='\e[1;30m'
LIGHTGRAY='\e[0;37m'

NOCOLOR='\e[m'

ARED='[0;31m'
ANOCOLOR='[0;0m'
AGREEN='[0;32m'
ABLUE='[0;34m'
ACYAN='[0;36'
APURPLE='[0;35m'

PS1="${LIGHTYELLOW}\\T ${LIGHTGRAY}\\W
${LIGHTCYAN}\\u$CYAN@\\h$NOCOLOR$ "

export PS1


# To add machine specific aliases go to
if [[ -a $SCRIPTPATH/.zshrc.machine-specific ]]; then
    source $SCRIPTPATH/.zshrc.machine-specific
fi

umask 077

# Set some usefull options
set bell-style none

source /etc/bash_completion.d/g4d

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/google/home/wlifferth/google-cloud-sdk/path.zsh.inc' ]; then . '/usr/local/google/home/wlifferth/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/google/home/wlifferth/google-cloud-sdk/completion.zsh.inc' ]; then . '/usr/local/google/home/wlifferth/google-cloud-sdk/completion.zsh.inc'; fi

export PATH=$PATH:/usr/local/google/home/wlifferth/bin

source '/usr/local/google/home/wlifferth/lib/azure-cli/az.completion'
