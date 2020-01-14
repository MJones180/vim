" ========================
" Vim Plug (Plugins)
" ========================
call plug#begin()

" General Plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'RRethy/vim-illuminate'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'ntpeters/vim-better-whitespace'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Language Specific Plugins
Plug 'Vimjas/vim-python-pep8-indent', { 'for': 'python' }
Plug 'lervag/vimtex', { 'for': 'latex' }

" Color scheme
Plug 'joshdick/onedark.vim'

" Initialize plugin system
call plug#end()
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
" Vimtex config
let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
