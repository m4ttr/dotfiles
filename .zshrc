path=("$HOME/bin" /usr/local/sbin /usr/local/bin "$path[@]")

export EDITOR=vim
export PYTHONSTARTUP=~/.pythonrc

# Autocompletion
autoload -Uz compinit
compinit

# Menu style completion
zstyle ':completion:*' menu select

# autocomplete aliases
setopt COMPLETE_ALIASES

setopt hist_ignore_space
export HISTFILE=~/.zsh_histroy
export HISTSIZE=10000
export SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_SAVE_NO_DUPS
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY

# ignore line prefixed with #
setopt interactivecomments

# tty contrl dont freeze the terminal
ttyctl -f
setopt noflowcontrol

# only past commands matching the current line
# up to the current cursor position will be shown.
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Prompt stuff
autoload -Uz promptinit
promptinit
autoload -Uz colors && colors

# VIM style binding
bindkey -v

# zsh syntax highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Golang
source ~/.zsh/go.zsh

# alias file
source ~/.zsh/aliases.zsh

# Color man pages
source ~/.zsh/man.zsh

# Prompt setup
source ~/.zsh/prompt.zsh-theme

