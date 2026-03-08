# Uncomment the next line to profile zsh startup (then run: zprof)
zmodload zsh/zprof
autoload -Uz compinit
compinit -C
autoload -U select-word-style
select-word-style bash

unsetopt menu_complete   # do not autoselect the first completion entry
unsetopt flowcontrol
setopt auto_menu         # show completion menu on successive tab press
setopt complete_in_word
setopt always_to_end
setopt auto_cd
setopt multios

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list \
    'm:{[:lower:]}={[:upper:]}' \
    '+r:|[._-]=* r:|=*' \
    '+l:|=*'

zmodload zsh/complist
bindkey -M menuselect '^[[Z' reverse-menu-complete

brew_prefix=/opt/homebrew

# source ~/dotfiles/zsh-plugins.sh
source $brew_prefix/opt/antidote/share/antidote/antidote.zsh

# Set the root name of the plugins files (.txt and .zsh) antidote will use.
zsh_plugins=${ZDOTDIR:-~}/dotfiles/zsh-plugins

# Ensure the .zsh_plugins.txt file exists so you can add plugins.
[[ -f ${zsh_plugins}.txt ]] || touch ${zsh_plugins}.txt

# Lazy-load antidote from its functions directory.
fpath=($brew_prefix/opt/antidote/share/antidote/functions $fpath)
fpath=(${HOME}/.zsh/completion $fpath)
autoload -Uz antidote

# Generate a new static file whenever .zsh_plugins.txt is updated.
if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
  antidote bundle <${zsh_plugins}.txt >|${zsh_plugins}.zsh
fi

# Source your static plugins file.
source ${zsh_plugins}.zsh


_starship_cache=$HOME/.zsh/completion/_starship_init_cached
if [[ ! -f $_starship_cache || $(command -v starship) -nt $_starship_cache ]]; then
  starship init zsh >| "$_starship_cache"
fi
source "$_starship_cache"

can-exec() {
  command -v "$1" >/dev/null 2>&1
}

# User configuration
HISTSIZE=1000000
SAVEHIST=1000000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt SHARE_HISTORY             # Share history between all sessions (implies INC_APPEND_HISTORY).
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.
export LANG=en_US.UTF-8

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey '^[w' backward-kill-line
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Aliases
#alias ls='ls -G --color=auto'
alias ls="eza"
#alias ll="ls -alFh"
alias ll="eza -l --icons --git --all -h -F auto --hyperlink"
alias cat="bat -p"
alias k="kubectl"
alias grep="grep --color='auto'"
alias c="highlight -O ansi"
alias lg="lazygit"
alias pinentry='pinentry-mac'
alias rm='trash'

# Init

_cache_completion() {
  local cmd=$1 cache=$HOME/.zsh/completion/_${cmd}_cached
  if can-exec "$cmd"; then
    if [[ ! -f $cache || $(command -v "$cmd") -nt $cache ]]; then
      "$cmd" completion zsh >| "$cache"
    fi
    source "$cache"
  fi
}
_cache_completion kubectl
_cache_completion helm

if can-exec mise; then
  eval "$(mise activate zsh)"
fi

if can-exec direnv; then
  eval "$(direnv hook zsh)"
fi

export GPG_TTY=$(tty)

if [ -f "$HOME/yandex-cloud/completion.zsh.inc" ]; then source "$HOME/yandex-cloud/completion.zsh.inc"; fi
