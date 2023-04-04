" From: http://www.benorenstein.com/blog/your-first-vimrc-should-be-nearly-empty/
" Stole a couple things from: https://github.com/johntfoster/dotvim/blob/master/vimrc
syntax on
set number
set relativenumber

" Make backspace behave in a sane manner.
set backspace=indent,eol,start
set showmatch
set smarttab
set tabstop=2
set shiftwidth=2
set expandtab

" Enable file type detection and do language-dependent indenting.
filetype off
filetype plugin indent on

" Install vim-plug if not found
" From: https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'pangloss/vim-javascript'
Plug 'Valloric/YouCompleteMe'
Plug 'bronson/vim-trailing-whitespace'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'dominikduda/vim_es7_javascript_react_snippets'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

syntax enable 					" syntax highlighting
set t_Co=256
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark         " Assume a dark background
colorscheme solarized " load a colorscheme
filetype on
filetype plugin indent on  	" Automatically detect file types.

autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
" autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab
" autocmd FileType javascriptreact setlocal tabstop=2 shiftwidth=2 expandtab
" autocmd FileType json setlocal tabstop=2 shiftwidth=2 expandtab
