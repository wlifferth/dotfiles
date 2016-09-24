autoload -U compinstall;

# Don't have the shell check for mail
unset MAIL

SCRIPTPATH=~/.dotfiles
# Get other shell configuration
source $SCRIPTPATH/.zsh/.zsh.path          # setup the PATH
source $SCRIPTPATH/.zsh/.zsh.manpath       # setup the MANPATH
source $SCRIPTPATH/.zsh/.zsh.aliases       # setup command aliases
# To add machine specific aliases go to
if [[ -a $SCRIPTPATH/.zsh/.zsh.machineSpecificAliases ]]; then
    source $SCRIPTPATH/.zsh/.zsh.machineSpecificAliases
fi
if [[ -a $SCRIPTPATH/.zsh/.zsh.machineSpecificPath ]]; then
    source $SCRIPTPATH/.zsh/.zsh.machineSpecificPath
fi
source $SCRIPTPATH/.zsh/.zsh.ohmyzsh       # set up oh-my-zsh stuff
source $SCRIPTPATH/.zsh/.zsh.prompt        # set the prompt

bindkey -d

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

echo 'Sourced .zshrc successfully'
