. "$HOME/.cargo/env"

export GOPATH=$HOME/Projects/go
export FIFTPATH=/Volumes/Workspace/ton/fiftlib
export HOMEBREW_NO_ENV_HINTS=true

export PATH="$HOME/bin:$GOPATH/bin:$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="$HOME/.bun/bin:$PATH"
export PATH="$HOME/.opencode/bin:$PATH"

if [ -f "$HOME/yandex-cloud/path.bash.inc" ]; then source "$HOME/yandex-cloud/path.bash.inc"; fi
