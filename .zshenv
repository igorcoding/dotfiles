[[ -d "$HOME/.cargo" ]] && source "$HOME/.cargo/env"

export LANG=en_US.UTF-8
export GOPATH=$HOME/Projects/go
export FIFTPATH=/Volumes/Workspace/ton/fiftlib
export HOMEBREW_NO_ENV_HINTS=true

[[ -d "${GOPATH}/bin" ]] && export PATH="${GOPATH}/bin:$PATH"
[[ -d /opt/homebrew/opt/openjdk/bin ]] && export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
[[ -d "${KREW_ROOT:-$HOME/.krew}/bin" ]] && export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
[[ -d "$HOME/.bun/bin" ]] && export PATH="$HOME/.bun/bin:$PATH"
[[ -d "$HOME/.opencode/bin" ]] && export PATH="$HOME/.opencode/bin:$PATH"
[[ -d "$HOME/.kimi-code/bin" ]] && export PATH="$HOME/.kimi-code/bin:$PATH"
if [ -f "$HOME/yandex-cloud/path.bash.inc" ]; then source "$HOME/yandex-cloud/path.bash.inc"; fi
[[ -d "${HOME}/bin" ]] && export PATH="${HOME}/bin:$PATH"
[[ -d "${HOME}/.local/bin" ]] && export PATH="${HOME}/.local/bin:$PATH"
