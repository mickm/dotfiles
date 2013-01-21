alias ls='ls -G'
alias b='bundle exec'
alias g='git'

export PATH="$HOME/bin:$PATH"

export LSCOLORS="Gxfxcxdxbxegedabagacad"
export EDITOR=vi

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
zstyle ':completion:*' menu select=20

autoload -U promptinit
promptinit
prompt mickm

if [[ $OSTYPE == darwin* ]]; then
  alias tmux='tmux -f ~/.tmux-osx.conf'
fi

export RUBY_GC_MALLOC_LIMIT=60000000
export RUBY_FREE_MIN=200000

eval "$(rbenv init -)"

[[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh"
export PATH=./node_modules/.bin:$PATH

if [ -d /Applications/Postgres.app ]; then
  export PATH=/Applications/Postgres.app/Contents/MacOS/bin:$PATH
fi

