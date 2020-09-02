" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    Plug 'mxw/vim-jsx'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes
    Plug 'mhartington/oceanic-next'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Status line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'
    " Start screen
    Plug 'mhinz/vim-startify'
    Plug 'mhinz/vim-signify'
    " Git
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " Sneak
    " Plug 'justinmk/vim-sneak'
    " Quickscope
    Plug 'unblevable/quick-scope'
    " Terminal
    Plug 'voldikss/vim-floaterm'
    " Prisma 2 Syntax Highlight
    Plug 'pantharshit00/vim-prisma'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
