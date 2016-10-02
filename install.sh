#! /usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SCRIPT_NAME=`basename "$0"`

BACKUP=$HOME/.dotfiles_bkp
mkdir -p $BACKUP

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

curl --version || exit 1
zsh --version || exit 1

FILES_TO_BACKUP=".bashrc
.bash_profile
.vimrc
.profile
.asoundrc
.gitconfig
.pulse
RD"

for filename in "$FILES_TO_BACKUP"
do
  mv "$HOME/$filename" $BACKUP > /dev/null 2>&1
done

mkdir -p $HOME/.vim
mkdir -p $HOME/.ssh
mkdir -p $HOME/.config
mkdir -p $HOME/.pulse

ln -s $DIR/.bashrc_extra.sh $HOME
echo "if [ -f \"$HOME/.bashrc_extra.sh\" ]; then source \"$HOME/.bashrc_extra.sh\"; fi" >> $HOME/.bashrc

ln -s $DIR/.bashrc_colors.sh $HOME
ln -s $DIR/.profile $HOME
ln -s $DIR/.gitconfig $HOME
ln -s $DIR/.vimrc $HOME
ln -s $DIR/.vim/* $HOME/.vim/
ln -s $DIR/.ssh/* $HOME/.ssh/
ln -s $DIR/.config/* $HOME/.config
ln -s $DIR/.asoundrc $HOME
ln -s $DIR/.pulse/* $HOME/.pulse
ln -s $DIR/.zshrc $HOME/.zshrc
ln -s $DIR/.tmux.conf $HOME/.tmux.conf
ln -s $DIR/.env.sh $HOME/.env.sh

git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

source $HOME/.profile

chsh -s $(which zsh)
