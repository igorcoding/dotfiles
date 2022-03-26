" =======  Plugins setup =======

set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required""

let g:airline_theme="hybrid"
let g:nerdtree_tabs_open_on_console_startup=0
let NERDTreeShowHidden=1
set laststatus=2

" ======= My config  =======

set number
syntax on
set tabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set smartindent

set encoding=utf-8
set fileencodings=utf8,cp1251
set cursorline

set background=dark
colorscheme hybrid_material

set mouse=a

set clipboard=unnamed

"set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
"set list

" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Use case if any caps used
set smartcase
" Highlight dynamically as pattern is typed
set incsearch

" Stop indenting when pasting
set pastetoggle=<f2>

let &titlestring = hostname() . "[vim(" . expand("%:t") . ")]"
if &term == "screen"
    set t_ts=^[k
    set t_fs=^[\
endif
if &term == "screen" || &term == "xterm"
    set title
endif


" ======= Hotkeys  =======
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-e> :Vexplore<CR>
nmap <C-S-E> :Explore<CR>
nmap <C-S-D> :t.<CR>
map <C-k><C-b> :NERDTreeTabsToggle<CR>
nnoremap <C-n> :tabnew<CR>
nnoremap <C-w> :tabclose<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

au bufreadpre,bufnewfile *.bnf set ft=bnf
au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif
au BufNewFile,BufRead CMakeLists.txt set filetype=cmake
