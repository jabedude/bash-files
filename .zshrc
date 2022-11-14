alias ls="ls -FG"
alias ll="ls -latr"
alias l="ls"
alias p="pwd"
alias cd..="cd .."
alias cd...="cd ../.."
alias ibrew="arch -x86_64 /opt/brew/bin/brew"

export EDITOR=nvim

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

setopt prompt_subst
PROMPT='MBP:%9c%{%F{green}%}$(parse_git_branch)%{%F{none}%} → '

# I use bash-style comments a lot for scratch.
setopt interactivecomments

# Use ESC to edit the current command line:
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line
bindkey '^R' history-incremental-search-backward

# Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

export PATH=/Users/josh/.local/bin:$PATH
export PATH=/Users/josh/Library/Python/3.8/bin:$PATH
export PATH=/Users/josh/Library/Python/3.9/bin:$PATH

## Histfile stuff
export HISTSIZE=100000
export SAVEHIST=$HISTSIZE
# Appends every command to the history file once it is executed
setopt inc_append_history
# Reloads the history whenever you use it
setopt share_history


# Directory aliases
hash -d dl=/Users/josh/Downloads/
