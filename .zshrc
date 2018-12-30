source ~/dotfiles/zsh-plugins.sh

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

can-exec() {
  which "$1" 2>/dev/null 1>/dev/null
}

# if can-exec kubectl; then
#   source <(kubectl completion zsh)
# fi

# User configuration

HISTSIZE=20000

export LANG=en_US.UTF-8


# Aliases
alias ll="ls -alFh"
alias xopen="xdg-open"
alias mkvirtualenv="source /usr/local/bin/virtualenvwrapper.sh && mkvirtualenv"
alias rmvirtualenv="source /usr/local/bin/virtualenvwrapper.sh && rmvirtualenv"
alias workon="source /usr/local/bin/virtualenvwrapper.sh && workon"
alias mkvirtualenv3="mkvirtualenv --python=`which python3`"
alias mkvirtualenv35="mkvirtualenv --python=`which python3.5`"
alias mkvirtualenv36="mkvirtualenv --python=`which python3.6`"
alias mkvirtualenv37="mkvirtualenv --python=`which python3.7`"
alias mailcatcher="docker run -p 1080:1080 -p 1025:1025 --rm --name mailcatcher schickling/mailcatcher"

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

source "$HOME/.env.sh"
# if [ -s "$HOME/.env.sh" ]; then source "$HOME/.env.sh"; fi
