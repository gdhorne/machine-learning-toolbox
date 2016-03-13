set nocompatible              " be iMproved, required
filetype off                  " required

set number
set tabstop=4

filetype plugin on
syntax on

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/hdima/python-syntax'
call plug#end()
