get_git_dirty () {
    git diff --name-status > /dev/null 2>&1
    if [[ $? -lt 1 ]]; then
        git diff --quiet || echo "*"
    fi
}

theme_precmd() {
    vcs_info
}

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn

setopt prompt_subst
zstyle ':vcs_info:git*' formats "%{$fg[yellow]%}%r %{$fg_bold[blue]%}%b %{$reset_color%}%m%u%c%{$reset_color%}"

RPROMPT='%{$fg_bold[cyan]%}[%{$reset_color%}${vcs_info_msg_0_}%{$fg[red]%}$(get_git_dirty)%{$reset_color%}%{$fg_bold[cyan]%}]%{$reset_color%}'
PROMPT='%{$fg_bold[cyan]%}[%{$reset_color%}%m:%{$fg[yellow]%}%c%{$reset_color%} %{$fg_bold[cyan]%}]%{$reset_color%} '


autoload -U add-zsh-hook
add-zsh-hook precmd theme_precmd

