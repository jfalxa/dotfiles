# Set history variables
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# setup auto cd
setopt auto_cd

# Make vim the default editor
export EDITOR=vim

# import list of aliases
source ~/.alias.sh

# Setting ag as the default source for fzf
export FZF_DEFAULT_COMMAND='ag -g ""'

# include fzf to zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# include zplug and load plugins
source ~/.zplug.sh
