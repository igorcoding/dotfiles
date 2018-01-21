# Path to your oh-my-zsh installation.
#export ZSH=$HOME/.oh-my-zsh
#export ZSH_CUSTOM=$HOME/dotfiles/oh-my-zsh-custom
#export TERM="xterm-256color"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="dst"
#ZSH_THEME="agnoster"
#ZSH_THEME="tonotdo"
#ZSH_THEME="intheloop"
#ZSH_THEME="spaceship"

#BASE16_SHELL="$HOME/.config/base16-shell/base16-material.dark.sh"
#[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git tmux vagrant virtualenv-prompt)


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
SPACESHIP_EXIT_CODE_SHOW=true

# Tell Antigen that you're done.
antigen apply

# deer
autoload -U deer
zle -N deer
bindkey '\ek' deer

# User configuration

HISTSIZE=20000

export LANG=en_US.UTF-8
if [ -f "$HOME/.env.sh" ]; then source "$HOME/.env.sh"; fi


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


