" =========================================
" Disable Polyglot For Certain Languages,
" Needs To Be Defined Before Loading Plugin
" =========================================
let g:polyglot_disabled = ['latex']

" ========================
" Vim Plug (Plugins)
" ========================
call plug#begin()
" General Plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'RRethy/vim-illuminate'
Plug 'airblade/vim-gitgutter'
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
Plug 'SirVer/ultisnips', { 'for': ['tex', 'javascript'] }

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
let g:ale_fixers={
    \ 'css': ['stylelint'],
    \ 'java': ['google_java_format'],
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
" Default to everything unfolded
set foldlevel=99
" Fold based on syntax
set foldmethod=syntax
" Highlight the current character's column
set cursorcolumn
" Allow folding for Python
au BufReadPost,BufNewFile *.py set foldmethod=indent

" ========================
" Mappings
" ========================

" Easier window switching
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
" Spell checking
map <C-S> :setlocal spell<CR>
" Fuzzy search
nmap <Leader>f :FZF<CR>
" Ag search
nmap <Leader>s :Ag<CR>
" View open buffers
nmap <Leader>b :Buffers<CR>
" Clear last search's highlights
nmap <Leader>c :noh<CR>

" ========================
" NERDTree
" ========================

" Open NERDTree
noremap <C-n> :NERDTreeToggle<CR>
" Close out of NERDTree when opening a file
let NERDTreeQuitOnOpen = 1
" Delete buffer when deleting file from NERDTree
let NERDTreeAutoDeleteBuffer = 1
" Get rid of help message in NERDTree
let NERDTreeMinimalUI = 1

" ===========================
" UltiSnips Snippets Location
" ===========================

let g:UltiSnipsSnippetDirectories=['~/vim/snippets']

" ========================
" LaTeX Config
" ========================

" Default open latex pdf preview with skim
let g:vimtex_view_method='skim'
" Default tex to latex
let g:tex_flavor='latex'
" Do not conceal subscript/superscript
let g:tex_conceal='abdmg'
" Do not show latex warnings
let g:vimtex_quickfix_ignore_filters={'default' : 0}
" Replace with specified char or space if none given for latex
au BufReadPost,BufNewFile *.tex set conceallevel=1
