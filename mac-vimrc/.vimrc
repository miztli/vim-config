set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" set encoding
set encoding=UTF-8

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ryanoasis/vim-devicons' "try to always load at the end

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"------ NERDTree Plugin
let NERDTreeShowHidden=1
" enable line numbers
let NERDTreeShowLineNumbers=1
" toggle dir tree
map <silent> <C-t> :NERDTreeToggle<CR> 

" Enter automatically to NERDTree
autocmd vimenter * NERDTree

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
