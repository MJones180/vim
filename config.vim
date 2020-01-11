" ========================
" Vundle (Plugins)
" ========================
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dense-analysis/ale'
Plugin 'tpope/vim-commentary'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'RRethy/vim-illuminate'
Plugin 'airblade/vim-gitgutter'
Plugin 'Yggdroot/indentLine'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

" Color scheme
Plugin 'joshdick/onedark.vim'

call vundle#end()
" Allow plugins to handle indentation
filetype plugin indent on

" ========================
" Ale (Linting)
" ========================

" Packages to lint code
let g:ale_linters={
    \ 'javascript': ['eslint'],
    \ 'python': ['flake8'],
    \ }
" Packages to prettify code
let b:ale_fixers={
    \ 'javascript': ['eslint'],
    \ 'python': ['yapf']
    \ }
" Prettify code on save
let g:ale_fix_on_save=1
" Give Ale priority over git changes
let g:gitgutter_sign_priority=0

" ========================
" Styling
" ========================

" Enjable syntax highlighting
syntax enable
" Set bottom bar's theme
let g:airline_theme='tomorrow'
" Enable italics
let g:onedark_terminal_italic=1
" Hide ~ on every unused line
let g:onedark_hide_endofbuffer=1
" Set color scheme
colorscheme onedark
" Make comments italic
highlight Comment cterm=italic
" Underline corresponding paren
highlight MatchParen cterm=underline
" Underline all matching words
highlight illuminatedWord cterm=underline
" Line indentation symbol
let g:indentLine_char='|'

" ========================
" Vim Settings
" ========================

" Indenting
set tabstop=4
set shiftwidth=4
set smartindent
" Use spaces instead of tabs
set expandtab
" Allow copy to system clipboard
set clipboard^=unnamed
" Display line numbers
set number
" Highlight current line
set cursorline
" Highlight while typing a search
set incsearch
" Highlight search matches
set hlsearch
" Make backspace work like normal
set backspace=indent,eol,start
" Time for updates
set updatetime=100
" Default encoding
set encoding=UTF-8
" Hide instead of close buffers
set hidden
" Horizontal split below
set splitbelow
" Vertical split right
set splitright
" Easier window switching
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
" Easier window resizing
nmap <Leader>w <C-W>+
nmap <Leader>s <C-W>-
nmap <Leader>d <C-W>>
nmap <Leader>a <C-W><
" Fuzzy search
nmap <Leader>f :FZF<CR>
" View open buffers
nmap <Leader>b :Buffers<CR>
" Open NERDTree
noremap <C-n> :NERDTreeToggle<CR>
