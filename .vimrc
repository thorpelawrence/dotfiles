syntax on
" Line numbers
set number
" Highlight search results
set hlsearch

set tabstop=4
set expandtab
set autoindent
set smartindent

" Fix backspace
set backspace=2

filetype plugin indent on

" Handle multiple buffers effectively
set hidden

" Lightline statusline config
set laststatus=2

" Plugins (vim-plug)
call plug#begin('~/.vim/plugged')
Plug 'maralla/completor.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

" Key mappings
map <C-o> :NERDTreeToggle<CR>
map ; :Files<CR>

let g:completor_python_binary = '/usr/local/bin/python'

" Colours
color dracula
let g:airline_theme='dracula'

