# Profiling (uncomment, then run: zprof)
# zmodload zsh/zprof

# ── Shell options ─────────────────────────────────────────────────────────────

# Navigation
setopt auto_cd               # cd into directory by just typing its name
setopt auto_pushd            # cd pushes old dir onto directory stack
setopt pushd_ignore_dups     # don't push duplicate dirs onto stack
setopt pushd_silent          # don't print dir stack after pushd/popd

# Completion behavior
setopt auto_menu             # show completion menu on successive tab press
setopt complete_in_word      # complete from both ends of a word
setopt always_to_end         # move cursor to end after completion
unsetopt menu_complete       # don't autoselect the first completion entry
unsetopt flowcontrol         # disable ^S/^Q flow control

# I/O and globbing
setopt multios               # allow multiple redirections (e.g. echo >a >b)
setopt interactive_comments  # allow # comments in interactive shell
setopt correct               # suggest corrections for mistyped commands

# History
HISTSIZE=1000000
SAVEHIST=1000000
setopt bang_hist             # treat '!' specially during expansion
setopt extended_history      # save timestamp and duration to history
setopt share_history         # share history between all sessions
setopt hist_expire_dups_first
setopt hist_ignore_dups      # don't record immediate duplicates
setopt hist_ignore_all_dups  # remove older duplicate entries
setopt hist_find_no_dups     # don't show duplicates in history search
setopt hist_ignore_space     # commands starting with space are not recorded
setopt hist_save_no_dups     # don't write duplicates to history file
setopt hist_reduce_blanks    # remove extra whitespace before recording
setopt hist_verify           # show expanded history command before executing
setopt hist_beep             # beep when accessing nonexistent history entry

# ── Word style ────────────────────────────────────────────────────────────────

autoload -U select-word-style
select-word-style bash       # word boundaries like bash (stop at / - _ etc.)

# ── Completion system ─────────────────────────────────────────────────────────

autoload -Uz compinit
compinit -C

zmodload zsh/complist

# Menu selection
zstyle ':completion:*' menu select
bindkey -M menuselect '^[[Z' reverse-menu-complete

# Case-insensitive and partial matching
zstyle ':completion:*' matcher-list \
    'm:{[:lower:]}={[:upper:]}' \
    '+r:|[._-]=* r:|=*' \
    '+l:|=*'

# Group results by category
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'

# Cache completions (speeds up brew, kubectl, etc.)
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Colorized process list for kill
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=36=31'

# ── Plugins (antidote) ───────────────────────────────────────────────────────

brew_prefix=/opt/homebrew

if [[ -f $brew_prefix/opt/antidote/share/antidote/antidote.zsh ]]; then
  source $brew_prefix/opt/antidote/share/antidote/antidote.zsh

  zsh_plugins=${ZDOTDIR:-~}/dotfiles/zsh-plugins
  [[ -f ${zsh_plugins}.txt ]] || touch ${zsh_plugins}.txt

  fpath=($brew_prefix/opt/antidote/share/antidote/functions $fpath)
  fpath=(${HOME}/.zsh/completion $fpath)
  autoload -Uz antidote

  # Regenerate static plugin file when .txt changes
  if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
    antidote bundle <${zsh_plugins}.txt >|${zsh_plugins}.zsh
  fi

  source ${zsh_plugins}.zsh
fi

# ── Prompt (starship) ────────────────────────────────────────────────────────

_starship_cache=$HOME/.zsh/completion/_starship_init_cached
if [[ ! -f $_starship_cache || $(command -v starship) -nt $_starship_cache ]]; then
  starship init zsh >| "$_starship_cache"
fi
source "$_starship_cache"

# ── Keybindings ──────────────────────────────────────────────────────────────

bindkey "^[[H" beginning-of-line                 # Home
bindkey "^[[F" end-of-line                       # End
bindkey '^[w'  backward-kill-line                # Alt+W
bindkey '^[[A' history-substring-search-up       # Up arrow
bindkey '^[[B' history-substring-search-down     # Down arrow

# ── Aliases ──────────────────────────────────────────────────────────────────

#alias ls='ls -G --color=auto'
alias ls="eza"
#alias ll="ls -alFh"
alias ll="eza -l --icons --git --all -h -F auto --hyperlink"
alias cat="bat -p"
alias k="kubectl"
alias grep="grep --color='auto'"
alias c="highlight -O ansi"
alias lg="lazygit"
alias pinentry='pinentry-mac'
alias rm='trash'

# ── Helper functions ─────────────────────────────────────────────────────────

can-exec() {
  command -v "$1" >/dev/null 2>&1
}

_cache_completion() {
  local cmd=$1 cache=$HOME/.zsh/completion/_${cmd}_cached
  if can-exec "$cmd"; then
    if [[ ! -f $cache || $(command -v "$cmd") -nt $cache ]]; then
      "$cmd" completion zsh >| "$cache"
    fi
    source "$cache"
  fi
}

# ── Tool integrations ───────────────────────────────────────────────────────

_cache_completion kubectl
_cache_completion helm

if can-exec mise; then
  eval "$(mise activate zsh)"
fi

if can-exec direnv; then
  eval "$(direnv hook zsh)"
fi

if [ -f "$HOME/yandex-cloud/completion.zsh.inc" ]; then
  source "$HOME/yandex-cloud/completion.zsh.inc"
fi

# ── Environment ──────────────────────────────────────────────────────────────

export GPG_TTY=$(tty)
