autoload -U compinit
compinit

# Don't have the shell check for mail
unset MAIL

# Get other shell configuration
source $DOTFILES_DIR/zsh/.zsh.path          # setup the PATH
source $DOTFILES_DIR/zsh/.zsh.manpath       # setup the MANPATH
source $DOTFILES_DIR/zsh/.zsh.aliases       # setup command aliases
source $DOTFILES_DIR/zsh/.zsh.ohmyzsh       # set up oh-my-zsh stuff
source $DOTFILES_DIR/zsh/.zsh.prompt        # set the prompt

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
