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
# Appends every command to the history file once it is executed
setopt inc_append_history
# Reloads the history whenever you use it
setopt share_history

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list \
    'm:{[:lower:]}={[:upper:]}' \
    '+r:|[._-]=* r:|=*' \
    '+l:|=*'

zmodload zsh/complist
bindkey -M menuselect '^[[Z' reverse-menu-complete

    
source ~/dotfiles/zsh-plugins.sh

eval "$(starship init zsh)"

can-exec() {
  which "$1" 2>/dev/null 1>/dev/null
}

enable-nvm() {
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
}

# User configuration
HISTSIZE=1000000000000000
SAVEHIST=1000000000000000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
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

# Aliases
alias ls='ls -G --color=auto'
alias ll="ls -alFh"
alias k="kubectl"

# Init

if command -v pyenv 1>/dev/null 2>&1; then  
  eval "$(pyenv init -)"
  #eval "$(pyenv virtualenv-init -)"
fi

# enable-nvm

if can-exec kubectl; then
  source <(kubectl completion zsh)
fi
if can-exec helm; then
  source <(helm completion zsh)
fi

# Environment

export GOPATH=/Users/igor/Projects/go
export PATH="$HOME/bin:$GOPATH/bin:$HOME/.krew/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH"

source "/usr/local/Caskroom/yandex-cloud-cli/latest/yandex-cloud-cli/completion.zsh.inc"

eval "$(direnv hook zsh)"
