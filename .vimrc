set number

set nocompatible              " be iMproved, required
filetype off                  " required

" use spaces, not tabs
set expandtab

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"adds directory tree navigation
Plugin 'scrooloose/nerdTree'

"add rail highlighting and navigation
Plugin 'tpope/vim-rails'

"adds git status bar
Plugin 'tpope/vim-fugitive'

"adds a bunch of color schemse
Plugin 'flazz/vim-colorschemes'

"adds sublime like monokai colorscheme
Plugin 'jaromero/vim-monokai-refined'

"adds yet another monokai colorscheme
Plugin 'sickill/vim-monokai'

Plugin 'kien/ctrlp.vim'

"smart tab sensing
Plugin 'tpope/vim-sleuth'

"auto complete
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Show 80 line mark
set colorcolumn=80

" Enable mouse
set mouse=a

" Show status bar
set laststatus=2

" Show file name first in status bar
set statusline=%t

" Show git info in status line
set statusline+=%{fugitive#statusline()}

" Forces robust colors
:set t_Co=256

"sets default color scheme
colorscheme monokai

" Easy window nav
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Easy tab nav
map <C-n> :tabnext<CR>
map <C-p> :tabprev<CR>


" Searches are case insensitive unless you use a capital letter. /str/i forces
" case sensitivity
set ignorecase
set smartcase

"Adds NERDTree shortcut
:command Nt NERDTree

"Adds new tab shortcut
:command To tabnew

"disables arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

"allows for cursor movement on displayed lines
:set wrap lbr
