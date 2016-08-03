#! /usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SCRIPT_NAME=`basename "$0"`

BACKUP=$HOME/.dotfiles_bkp
mkdir -p $BACKUP

mv $HOME/.bashrc $BACKUP
mv $HOME/.bash_profile $BACKUP
mv $HOME/.vimrc $BACKUP
mv $HOME/.vim $BACKUP
mv $HOME/.profile $BACKUP
mv $HOME/.asoundrc $BACKUP
mv $HOME/.gitconfig $BACKUP
mkdir -p $BACKUP/.pulse
mv $HOME/.pulse/client.conf $BACKUP/.pulse/

mkdir -p $HOME/.vim
mkdir -p $HOME/.ssh
mkdir -p $HOME/.config
mkdir -p $HOME/.pulse

ln -s $DIR/.bashrc $HOME
ln -s $DIR/.bashrc_colors $HOME
ln -s $DIR/.profile $HOME
ln -s $DIR/.gitconfig $HOME
ln -s $DIR/.vimrc $HOME
ln -s $DIR/.vim/* $HOME/.vim/
ln -s $DIR/.ssh/* $HOME/.ssh/
ln -s $DIR/.config/* $HOME/.config
ln -s $DIR/.asoundrc $HOME
ln -s $DIR/.pulse/* $HOME/.pulse
ln -s $DIR/.zshrc $HOME/.zshrc
ln -s $DIR/.env.sh $HOME/.env.sh

git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

source $HOME/.profile

