"Dan's Customized Vim!!!

syntax on
filetype plugin indent on
set nocompatible
set encoding=utf-8
set hidden
set noswapfile
set nobackup
set wildmode=list:longest
set backspace=indent,eol,start
set tabstop=4 expandtab shiftwidth=2 softtabstop=2
set textwidth=80
set linespace=0
set number
set laststatus=2
set t_Co=256
set colorcolumn=80 
set clipboard=unnamed
set ff=unix
hi Search ctermbg=DarkBlue

autocmd FileType go,c,cpp,java,php,ruby,ps1 autocmd BufWritePre <buffer> %s/\s\+$//e

"[leader and key mappings]
let mapleader=","
nnoremap <silent> <C-n> :set relativenumber!<cr>
inoremap <Leader>w <C-O>:update<CR><Esc>
nmap <C-B> :CtrlPBuffer<CR>
map <Leader>. :tabprevious<CR>
map <Leader>, :tabnext<CR>
map <Leader>h :bp<CR>
map <Leader>l :bn<CR>
map <Leader>c :bd<CR>
map <Leader>R :RuboCop<CR>
map <Leader>f <C-w><C-w>
map <Leader>m :%s/\r$//

"[search options]
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q nohlsearch<CR>

"[plugins]
call plug#begin("$HOME/.vim/plugged")
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'vim-syntastic/syntastic'
Plug 'vim-ruby/vim-ruby'
Plug 'chiel92/vim-autoformat'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-signify'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'junegunn/vim-easy-align'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
call plug#end()

"[langauge server]
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rls'],
    \ 'go': [$HOME, 'go', 'bin', 'go-langserver'],
    \ }
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

"[airline options]
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enable = 1
let g:airline_theme = 'base16'
let g:airline_enable_branch = 1
let g:airline_enable_syntastic = 1

"[line indentation]
vnoremap < <gv
vnoremap > >gv

"[CtrlP Settings]
let g:ctrlp_max_height = 30
let g:ctrlp_working_path_mode = 0
let g:ctrlp_mruf_relative = 0

"[reload vimrc automatically]
augroup myvimrc
  au!
  au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

