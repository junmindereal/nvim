call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    " Plug 'sheerun/vim-polyglot'
    " Plug 'yuezk/vim-js'
    " Plug 'maxmellon/vim-jsx-pretty'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes
    Plug 'morhetz/gruvbox' 
    " Status bar
    Plug 'nvim-lualine/lualine.nvim'
    " Terminal
    Plug 'szw/vim-maximizer'
    Plug 'kassio/neoterm'
    Plug 'tpope/vim-commentary'
    " File explorer
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Git
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/gv.vim'
    " Finder
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    " Linting
    Plug 'dense-analysis/ale'

call plug#end()
