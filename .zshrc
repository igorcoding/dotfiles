autoload -Uz compinit
compinit -C
zstyle ':completion:*' menu select
setopt auto_cd
setopt multios
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
HISTSIZE=100000
export LANG=en_US.UTF-8

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# Aliases
alias ls='ls -G --color=auto'
alias ll="ls -alFh"

# Init

if command -v pyenv 1>/dev/null 2>&1; then  
  eval "$(pyenv init -)"
  #eval "$(pyenv virtualenv-init -)"
fi

# enable-nvm

if can-exec kubectl; then
  source <(kubectl completion zsh)
fi

# Environment

export GOPATH=/Users/igor/Projects/go
export PATH="$HOME/bin:$GOPATH/bin:$HOME/.krew/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH"

source "/usr/local/Caskroom/yandex-cloud-cli/latest/yandex-cloud-cli/completion.zsh.inc"
