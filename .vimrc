if $COLORTERM == 'gnome-terminal'
      set t_Co=256
endif

call plug#begin('~/.vim/plugged')

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'fatih/vim-go'

Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

Plug 'tpope/vim-fugitive'

Plug 'scrooloose/syntastic'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'jmcantrell/vim-virtualenv'

Plug 'sherifkandeel/vim-colors'

Plug 'majutsushi/tagbar'

Plug 'elixir-lang/vim-elixir'

Plug 'airblade/vim-gitgutter'

Plug 'Valloric/YouCompleteMe'
Plug 'larrylv/ycm-elixir'
Plug 'slashmili/alchemist.vim'

call plug#end()

" Defaults  --------------------------------
let mapleader = ","
set nu
set cursorline
set ls=2
set backspace=2
set ic
colorscheme vimbrains
set hlsearch
nnoremap <c-c> :set hlsearch!<CR>
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=2

" Airline  --------------------------------
let g:airline_theme = 'distinguished'

" Snippets --------------------------------
let g:UltiSnipsExpandTrigger="<tab>"

" NERDTree --------------------------------
nmap <leader>t :NERDTreeFind<CR>
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Syntastic  --------------------------------
nmap <leader>e :Errors<CR>
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 0

" NERDCommenter  --------------------------------
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1

" Neocomplete  --------------------------------
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Tagbar  --------------------------------
map <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 't:tests',
        \ 'r:records'
    \ ]
\ }
" CtrlP  --------------------------------
let g:ctrlp_working_path_mode = 'ra'

" YouCompleteMe  --------------------------------
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_key_invoke_completion = '<S-Enter>'
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,vim,ruby,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
\ }
