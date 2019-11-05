# .bashrc

# Source global definitions
if [[ -f /etc/bashrc ]]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH
export LS_OPTIONS='--color=auto'

# User specific directory colors
if [[ -f $HOME/.dircolors ]]; then
  eval "`dircolors $HOME/.dircolors`"
fi

# User specific aliases and functions
alias ls='ls $LS_OPTIONS'
