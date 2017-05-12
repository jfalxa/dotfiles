# Use sudo with aliases
alias sudo="sudo "

# Color LS
lsoptions="--group-directories-first --color"
alias ls="ls ${lsoptions}"
alias l="ls -l ${lsoptions}" # all files, in long format
alias ll="ls -la ${lsoptions}" # all files inc dotfiles, in long format

# Quicker navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Git
alias gs='git status'
alias gd='git diff'
alias ga='git add .'
alias gc='git commit -m' # requires you to type a commit message
alias gp='git push'
alias gpl='git pull'
alias glog='git glog'

# Alias actual images in imv
alias imv="/usr/bin/imv -a"

# Shortcut to workspace
alias c="cd ~/workspace"

# vim stuff
alias v="vim"
alias vf="vim -c FZF"

# find string in files
alias f="grep -r "

