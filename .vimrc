if $COLORTERM == 'gnome-terminal'
      set t_Co=256
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'fatih/vim-go'

Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

Plug 'tpope/vim-fugitive'

" Plug 'scrooloose/syntastic'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'jmcantrell/vim-virtualenv'

Plug 'sherifkandeel/vim-colors'

Plug 'elixir-lang/vim-elixir'

Plug 'airblade/vim-gitgutter'

Plug 'rking/ag.vim'

Plug 'nlknguyen/papercolor-theme'

Plug 'rainglow/vim', { 'as': 'rainglow-themes' }


call plug#end()

" Defaults  --------------------------------
let mapleader = ","
set nu
set cursorline
set ls=2
set backspace=2
set ic
colorscheme tetra-contrast



set hlsearch
nnoremap <c-c> :set hlsearch!<CR>
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=2
set nofoldenable    " disable folding

" Airline  --------------------------------
let g:airline_theme = 'distinguished'

" Snippets --------------------------------

" NERDTree --------------------------------
nmap <leader>t :NERDTreeFind<CR>
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" NERDCommenter  --------------------------------
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1

" Neocomplete  --------------------------------
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" CtrlP  --------------------------------
let g:ctrlp_working_path_mode = 'ra'


