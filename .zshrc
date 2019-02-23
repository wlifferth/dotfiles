autoload -U compinstall;

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
autoload -U zmv # Load the zmv command

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
bindkey -v
bindkey -s jj '\e'
bindkey jj vi-cmd-mode
bindkey -M viins ‘jj’ vi-cmd-mode

# Start Up fasd
eval "$(fasd --init posix-alias zsh-hook zsh-ccomp zsh-ccomp-install \
      zsh-wcomp zsh-wcomp-install)"
# Init fasd
eval "$(fasd --init auto)"

# Tabl completion
autoload -U compinit
compinit

#######################################
# OH-MY-ZSH                           #
#######################################

# Path to your oh-my-zsh installation.
export ZSH=~/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# enable command auto-correction.
ENABLE_CORRECTION="true"

# display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# change the command execution time
HIST_STAMPS="mm/dd/yyyy"

# Load plugins (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump command-not-found python pip github gnu-utils history-substring-search)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

#######################################
# OH-MY-ZSH                           #
#######################################
# Color shortcuts
RED='%{[0;31m%}'
LIGHTRED='%{[1;31m%}'

GREEN='%{[0;32m%}'
LIGHTGREEN='%{[1;32m%}'

YELLOW='%{[0;33m%}'
LIGHTYELLOW='%{[1;33m%}'

BLUE='%{[0;34m%}'
LIGHTBLUE='%{[1;34m%}'

PURPLE='%{[0;35m%}'
LIGHTPURPLE='%{[1;35m%}'

CYAN='%{[0;36m%}'
LIGHTCYAN='%{[1;36m%}'

GRAY='%{[1;30m%}'
LIGHTGRAY='%{[0;37m%}'

NOCOLOR='%{[0m%}'

ARED='[0;31m'
ANOCOLOR='[0;0m'
AGREEN='[0;32m'
ABLUE='[0;34m'
ACYAN='[0;36'
APURPLE='[0;35m'

PROMPT="$LIGHTGREEN%D %T $LIGHTGRAY %~
$LIGHTCYAN%n$CYAN@%m$NOCOLOR%(!.#.$) "

export PROMPT
# export RPROMPT


# To add machine specific aliases go to
if [[ -a $SCRIPTPATH/.zsh/.zsh.machineSpecific ]]; then
    source $SCRIPTPATH/.zsh/.zsh.machineSpecific
fi

umask 077

# Turn off core dumps
limit coredumpsize 0

# Set some usefull options
setopt nohup            # Don't kill jobs when the shell exits
setopt nobeep           # Don't beep at me all the time
setopt nocheckjobs      # Don't check for running jobs at shell exit
setopt longlistjobs     # Show more information about jobs
setopt pushdtohome      # pushd goes to $HOME if nothing else is given
setopt noflowcontrol    # Disables ^S/^Q in line-edit mode



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/wlifferth/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/wlifferth/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/wlifferth/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/wlifferth/google-cloud-sdk/completion.zsh.inc'; fi
