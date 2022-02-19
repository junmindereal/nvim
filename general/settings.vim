let mapleader = " "                     " space as leader key 
set completeopt=menu,menuone,noselect   " better autocomplete options
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set expandtab                           " Converts tabs to spaces
set tabstop=2                           " number of visual spaces per TAB
set softtabstop=2                       " number of spaces in tab when editin
set shiftwidth=2                        " number of spaces to use for autoindent
set showtabline=2                       " Always show tabs
set ignorecase                          " search case insensitive
set smartcase                           " search via smartcase 
set incsearch                           " search incremental
set diffopt+=vertical                   " starts diff mode in vertical split
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			        " Show the cursor position all the time
set cmdheight=1                         " Space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set autoindent
set smarttab
set ai                                  " Auto Indent
set si                                  " Smart Indent
set relativenumber                      " Relative numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " Don't create back up files
set nowritebackup                       " Don't create back up files
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set signcolumn=yes
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
filetype plugin indent on               " enable detection, plugins and indents
if (has("termguicolors"))
  set termguicolors                     " better colors, but makes it sery slow!
endif
let g:netrw_banner=0                    " disable banner in netrw
let g:netrw_liststyle=3                 " tree view in netrw

set shortmess+=c                        " Don't pass messages to ins-completion-menu.


set shell=/usr/local/bin/bash\ --rcfile\ ~/.bash_profile " sets vim terminal as the bash the you regularly use
let g:ale_disable_lsp = 1
let php_htmlInStrings = 1

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
