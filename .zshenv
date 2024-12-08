. "$HOME/.cargo/env"

brew_prefix=/opt/homebrew

eval "$($brew_prefix/bin/mise activate zsh)"
if [ -f "$HOME/yandex-cloud/path.bash.inc" ]; then source "$HOME/yandex-cloud/path.bash.inc"; fi

export GOPATH=$HOME/Projects/go

export PATH="$HOME/bin:$GOPATH/bin:$HOME/.local/bin:$HOME/.krew/bin:$PATH"

export FIFTPATH=/Volumes/Workspace/ton/fiftlib
export GPG_TTY=$(tty)