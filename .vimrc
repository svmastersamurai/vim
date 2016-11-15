"Dan's Customized Vim!!!
set encoding=utf-8
set nocompatible
source ~/vim/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect("$HOME/vim/bundle/{}")
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
set clipboard=unnamed
set ff=unix

autocmd FileType c,cpp,java,php,ruby,ps1 autocmd BufWritePre <buffer> %s/\s\+$//e

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
map <Leader>m :%s/\r$//

"[search options]
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q nohlsearch<CR>

"[airline options]
let g:airline#extensions#tabline#enable = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'jay'
let g:airline_enable_branch = 1
let g:airline_enable_syntastic = 1

"[gvim specific settings]
if has('gui_running')
  set guioptions-=T  " no toolbar
  colorscheme monokai
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.maxlinenr = '☰'
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.spell = 'Ꞩ'
  let g:airline_symbols.notexists = '∄'
  let g:airline_symbols.whitespace = 'Ξ'

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''

  " old vim-powerline symbols
  let g:airline_left_sep = '⮀'
  let g:airline_left_alt_sep = '⮁'
  let g:airline_right_sep = '⮂'
  let g:airline_right_alt_sep = '⮃'
  let g:airline_symbols.branch = '⭠'
  let g:airline_symbols.readonly = '⭤'
  let g:airline_symbols.linenr = '⭡'
endif

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
