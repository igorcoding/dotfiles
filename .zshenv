. "$HOME/.cargo/env"

export LANG=en_US.UTF-8
export GOPATH=$HOME/Projects/go
export FIFTPATH=/Volumes/Workspace/ton/fiftlib
export HOMEBREW_NO_ENV_HINTS=true

export PATH="$HOME/bin:$GOPATH/bin:$HOME/.local/bin:$PATH"
[[ -d /opt/homebrew/opt/openjdk/bin ]] && export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
[[ -d "${KREW_ROOT:-$HOME/.krew}/bin" ]] && export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
[[ -d "$HOME/.bun/bin" ]] && export PATH="$HOME/.bun/bin:$PATH"
[[ -d "$HOME/.opencode/bin" ]] && export PATH="$HOME/.opencode/bin:$PATH"

if [ -f "$HOME/yandex-cloud/path.bash.inc" ]; then source "$HOME/yandex-cloud/path.bash.inc"; fi
