set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mxw/vim-jsx'
Plugin 'yggdroot/indentline'
Plugin 'elzr/vim-json'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ekalinin/dockerfile.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'tfnico/vim-gradle'
Plugin 'plasticboy/vim-markdown'
Plugin 'othree/html5.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'ryanoasis/vim-devicons'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let NERDTreeShowHidden=1
" enable line numbers
let NERDTreeShowLineNumbers=1
let g:airline_powerline_fonts = 1
autocmd vimenter * NERDTree
autocmd FileType javascript set formatprg=prettier\ --stdin
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber
au BufWinEnter * set number
" yank to clipboard
map <C-c> y:e ~/customclipboard<CR>P:w !pbcopy<CR><CR>:bdelete!<CR>
" toggle dir tree
map <silent> <C-t> :NERDTreeToggle<CR>

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
"
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
