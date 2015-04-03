"Dan's Customized Vim!!!
set nocompatible

execute pathogen#infect()
syntax on
filetype plugin indent on
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
colorscheme Monokai
set clipboard=unnamed

"[leader and key mappings]
let mapleader=","
inoremap <Leader>w <C-O>:update<CR><Esc>
nmap <C-B> :CtrlPBuffer<CR>
map <Leader>. :tabprevious<CR>
map <Leader>, :tabnext<CR>
map <Leader>h :bp<CR>
map <Leader>l :bn<CR>
map <Leader>c :bd<CR>
map <Leader>R :RuboCop<CR>
map <Leader>f <C-w><C-w>

"[search options]
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q nohlsearch<CR>

"[airline options]
let g:airline#extensions#tabline#enable = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'wombat'
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
