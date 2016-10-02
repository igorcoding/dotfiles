if [ -f ~/.bashrc_colors.sh ]; then
    . ~/.bashrc_colors.sh
fi


# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-material.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

if [ -f "$HOME/.env.sh" ]; then source "$HOME/.env.sh"; fi
