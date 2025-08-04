. "$HOME/.cargo/env"

brew_prefix=/opt/homebrew

eval "$($brew_prefix/bin/mise activate zsh)"
if [ -f "$HOME/yandex-cloud/path.bash.inc" ]; then source "$HOME/yandex-cloud/path.bash.inc"; fi
if [ -f "$HOME/yandex-cloud/completion.zsh.inc" ]; then source "$HOME/yandex-cloud/completion.zsh.inc"; fi

export GOPATH=$HOME/Projects/go

export PATH="$HOME/bin:$GOPATH/bin:$HOME/.local/bin:$PATH"

export FIFTPATH=/Volumes/Workspace/ton/fiftlib
export GPG_TTY=$(tty)
export PATH="$brew_prefix/opt/openjdk/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

export HOMEBREW_NO_ENV_HINTS=true
