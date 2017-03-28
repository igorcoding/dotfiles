# A multiline prompt with username, hostname, full path, return status, git branch, git dirty status, git remote status

local return_status="%{$fg[red]%}%(?..⏎)%{$reset_color%}"

local name_color="green"
local host_color="yellow"
if [ $UID -eq 0 ]; then
  local name_color="red"
  local host_color="red"
fi


function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg_bold[red]%}#❯%{$reset_color%}"; else echo "%{$fg_bold[cyan]%}❯%{$reset_color%}"; fi
}

PROMPT='
%{$fg_bold[grey]%}[%{$reset_color%}%{$fg_bold[${name_color}]%}%n@%{$fg[${host_color}]%}%m%{$reset_color%}%{$fg_bold[grey]%}]%{$reset_color%} %{$fg_bold[blue]%}%10c%{$reset_color%} $(git_prompt_info) $(git_remote_status)
$(prompt_char) '


RPROMPT='%{$fg[green]%}[%*]${return_status}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[grey]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[grey]%}) %{$fg[yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[grey]%})"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg_bold[magenta]%}↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg_bold[magenta]%}↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$fg_bold[magenta]%}↕%{$reset_color%}"
