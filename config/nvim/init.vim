call plug#begin(stdpath('data') . '/plugged')

Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dylanaraps/wal.vim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'dunstontc/vim-vscode-theme'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'mattn/emmet-vim'
Plug 'rust-lang/rust.vim'
Plug 'https://github.com/arzg/vim-colors-xcode'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'https://github.com/sainnhe/gruvbox-material'
Plug 'https://github.com/dikiaap/minimalist'
Plug 'davidosomething/vim-colors-meh'

call plug#end()

set shiftwidth=4
set tabstop=4
set nowrap
set number
set number
set ruler
set visualbell
set encoding=utf-8
set nowrap

autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')
au BufReadPost *.conf set syntax=toml

set tgc
set bg=dark
color spacemacs-theme


" hi Normal 			ctermbg=None	guibg=None
" hi NonText 			ctermbg=None	guibg=None
" hi EndOfBuffer 		ctermbg=None	guibg=None
" hi Number 			ctermbg=None	guibg=None

" Disable C-z from job-controlling neovim
nnoremap <c-z> <nop>

" Remap C-c to <esc>
nmap <c-c> <esc>
imap <c-c> <esc>
vmap <c-c> <esc>
omap <c-c> <esc>

inoremap jj <Esc>l
nnoremap JJJJ <Nop>

" default file encoding
let g:netrw_banner = 0
