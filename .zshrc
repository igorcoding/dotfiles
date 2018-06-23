source $HOME/dotfiles/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle nvm
antigen bundle docker

antigen bundle command-not-found
antigen bundle chrissicool/zsh-256color
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle Vifon/deer

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship
SPACESHIP_TIME_SHOW=false
SPACESHIP_DIR_PREFIX=""
SPACESHIP_DIR_TRUNC=0
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_VENV_PREFIX="via venv:"
SPACESHIP_EXIT_CODE_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_XCODE_SHOW_GLOBAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_GLOBAL=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_HASKELL_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_AWS_SHOW=false
SPACESHIP_CONDA_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_VI_MODE_SHOW=false


# Tell Antigen that you're done.
antigen apply

#source <(kubectl completion zsh)

# deer
#autoload -U deer
#zle -N deer
#bindkey '\ek' deer

# User configuration

HISTSIZE=20000

export LANG=en_US.UTF-8
#if [ -f "$HOME/.env.sh" ]; then source "$HOME/.env.sh"; fi


# Aliases
alias ll="ls -alFh"
alias xopen="xdg-open"
alias mkvirtualenv3="mkvirtualenv --python=`which python3`"
alias mkvirtualenv35="mkvirtualenv --python=`which python3.5`"
alias mkvirtualenv36="mkvirtualenv --python=`which python3.6`"

bindkey "${key[Up]}" up-line-or-local-history
bindkey "${key[Down]}" down-line-or-local-history

up-line-or-local-history() {
    zle set-local-history 1
    zle up-line-or-history
    zle set-local-history 0
}
zle -N up-line-or-local-history
down-line-or-local-history() {
    zle set-local-history 1
    zle down-line-or-history
    zle set-local-history 0
}
zle -N down-line-or-local-history

bindkey "^[[1;5A" up-line-or-history    # [CTRL] + Cursor up
bindkey "^[[1;5B" down-line-or-history  # [CTRL] + Cursor down


