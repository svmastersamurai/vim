#! /usr/bin/bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s $(realpath .vimrc) ~/.vimrc
ln -s $(realpath .vimrc.posix) ../.vimrc.os
