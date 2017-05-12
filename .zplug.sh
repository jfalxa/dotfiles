# include zplug
source /usr/share/zsh/scripts/zplug/init.zsh


# list plugins
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "akz92/clean", as:theme


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi


# Then, source plugins and add commands to $PATH
zplug load

# bind up/down to history search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
