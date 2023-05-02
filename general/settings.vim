let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <Space> <Nop>

set rtp+=/usr/local/opt/fzf
let g:python3_host_prog = '/usr/local/bin/python3'
let g:ctrlsf_ackprg = '/usr/local/bin/rg'

" syntax on
filetype plugin indent on
 
" " This is only necessary if you use "set termguicolors".
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" " fixes glitch? in colors when using vim with tmux
colorscheme apprentance
set background=dark
set t_Co=256

set termguicolors
set encoding=utf8
set fileencoding=utf-8                  " The encoding written to file
set cmdheight=2                         " More space for displaying messages
set nofoldenable
set nocompatible
set nobackup
set nowb
" set number
set relativenumber
set number relativenumber
set noswapfile
set ic
set mouse=a 
set spell spelllang=en_us
set complete+=kspell
set hidden
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set updatetime=300                      " Faster completion
" set timeoutlen=100                      " THIS BREAKS LEADER MAPPINGS By default timeoutlen is 1000 ms
set incsearch
vnoremap . :norm.<CR>

let $NVIM_PYTHON_LOG_FILE="/tmp/nvim_log"
let $NVIM_PYTHON_LOG_LEVEL="DEBUG"

" use system clipboard
set clipboard=unnamed

