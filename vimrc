" By Andy Tseng
"interface
set nu
set nobackup
set nowritebackup
set nocompatible
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set cursorline
set hidden
set encoding=utf-8
set termencoding=utf-8
set backspace=indent,eol,start
set t_Co=256
set background=dark
set ic
set wildmenu
set showcmd
set ruler
set colorcolumn=80
set laststatus=2
set hlsearch

"remaps
inoremap jj <Esc>
inoremap Jj <Esc>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <right> <nop>
inoremap <left> <nop>
nnoremap L $
nnoremap H 0
command Wq wq
command Q q
command W w

"color!
colorscheme gruvbox

"syntax
syntax on
filetype plugin indent on

"plugins manager
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', {'on' : 'NERDTreeToggle'}
Plug 'scrooloose/syntastic'
Plug 'junegunn/goyo.vim'
call plug#end()
execute pathogen#infect()

"syntastic
let g:syntastic_cpp_compiler ='clang++'
let g:syntastic_cpp_compiler_options =' -std=c++11 -stdlib=libc++'
let g:syntastic_python_checkers=['']

" cpp highlighting
let g:cpp_class_scope_highlight = 1

" Trailing whitespace show
highlight ExtraWhitespace ctermbg=blue guibg=lightblue
match ExtraWhitespace /\s\+$/

" highlight search
highlight Search guibg=orange ctermbg=black
