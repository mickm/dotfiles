export PATH="$HOME/bin:/usr/local/sbin:/usr/local/bin:$PATH"

export LSCOLORS="Gxfxcxdxbxegedabagacad"
export LS_COLORS="di=36;1:ln=35;1:so=32;1:pi=33;1:ex=31;1:bd=36;46:cd=35;45:su=0;41:sg=0;46:tw=0;42:ow=37;40:"
export EDITOR=vim

set -o emacs

export HISTFILE="$HOME/.zhistory"
export HISTSIZE=262144
export SAVEHIST=262144
setopt append_history
setopt extended_history
setopt inc_append_history
setopt hist_ignore_dups

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '\e[A' history-beginning-search-backward-end
bindkey '\e[B' history-beginning-search-forward-end 

autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

autoload -U compinit
compinit
zstyle ':completion:*' menu select=8

autoload -U promptinit
promptinit
prompt mickm

if [[ $OSTYPE == darwin* ]]; then
  alias tmux='tmux -f ~/.tmux-osx.conf'
  alias vim='mvim -v'
  LS_COMMAND='gls'
else
  LS_COMMAND='ls'
fi

if [ -d /Applications/Postgres.app ]; then
  export PATH=/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH
fi

alias ls="$LS_COMMAND --group-directories-first --color"
alias ll="ls -l"
alias b='bundle exec'
alias g='git'
alias json='python -mjson.tool'
alias http='python -mSimpleHTTPServer'
alias vi='vim'
alias ag='ag --color-match="38;5;71" --color-line-number="38;5;236;48;5;254" \
  --color-path="38;5;236;48;5;254"'

source_if_exists() {
  [[ -s "$1" ]] && . "$1"
}

source_if_exists "$HOME/.nvm/nvm.sh"
source_if_exists /usr/local/bin/virtualenvwrapper.sh
source_if_exists /usr/local/share/chruby/chruby.sh
RUBIES=(
  ~/.rubies/*
)
source_if_exists "$HOME/.zshrc.local"
