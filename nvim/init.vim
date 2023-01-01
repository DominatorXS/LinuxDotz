set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set noshowmode
"set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
call plug#begin()
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ncm2/ncm2'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'brooth/far.vim'
Plug 'sainnhe/everforest'
call plug#end()

       " Important!!
if has('termguicolors')
    set termguicolors
endif
        " For dark version.
set background=dark
        " For light version.
"set background=li
        " Set contrast.
        " This configuration option should be placed before `colorscheme everforest`.
        " Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'hard'
        " For better performance
let g:everforest_better_performance = 1
colorscheme everforest

lua << EOF
local theme = require'lualine.themes.everforest'
require('lualine').setup{
    options = { theme  = theme }
}
EOF

