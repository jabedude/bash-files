alias ls="ls --color=auto"
alias ll="ls -latr"
alias l="ls"
alias p="pwd"
alias cd..="cd .."
alias cd...="cd ../.."
alias psg="ps aux | grep"
alias nsg="netstat -antp | grep"
alias holdnet="watch -n3 netstat -natpu"
alias vscode="code --user-data-dir='/root/.vscode-root'"
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
alias sp="sudo pacman "
alias epictreasure="docker run --rm -v /home/josh:/root/host-share --privileged -it --workdir=/root ctfhacker/epictreasure"

if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

#export PS1=" \[\e[00;32m\]λ \W\[\e[-1m\] → "
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#if [ -f /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh ]; then
#        source /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh
#fi

export PS1="\[\e[00;32m\] λ \W\[\e[0m\]\$(parse_git_branch) → "
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
export PATH="/usr/local/bin/aarch64-none-elf/bin:$PATH"
export EDITOR="vim"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
