set nocompatible
filetype off
syntax on

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'The-NERD-tree'
Plugin 'clang-complete'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Conque-GDB'
Plugin 'itchyny/vim-gitbranch'
Plugin 'ntpeters/vim-better-whitespace'
" color schemes
Plugin 'tomasiser/vim-code-dark'
call vundle#end()

filetype plugin on

map <C-n> :NERDTreeToggle<CR>
set t_Co=256
set t_ut=
colorscheme codedark
set number
set laststatus=2
set noshowmode
set autoread

" indent
filetype indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start

let g:coc_disable_startup_warning = 1
let g:NERDTreeDirArrows=0

let g:lightline = {
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'gitbranch#name'
  \ },
  \ }

