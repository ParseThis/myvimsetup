set nocompatible              " required
filetype off                  " required
set nu

" --------------------- set color & scheme ---------------
set termguicolors
set background=dark

" the configuration options should be placed before `colorscheme edge`
let g:edge_style = 'neon'
let g:edge_disable_italic_comment = 1
colorscheme edge


" --------------------- vundle setup ---------------------

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" ------------------- navigating panes -----------
" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ------------------- code folding  --------------
" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za


" ----------------- python pep 8 stuff ---------------
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab | 
    \ set autoindent |
    \ set fileformat=unix

" autoindent
Plugin 'vim-scripts/indentpython.vim'

" flag extra whitespace
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


Plugin 'nvie/vim-flake8'
Plugin 'vim-syntastic/syntastic'
Plugin 'psf/black'
let python_highlight_all=1
syntax on


" -------------------- code completion ----------------
Bundle 'Valloric/YouCompleteMe'

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


" ------------------ virtualenv support --------------

py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF


" ---------------  directory tree ---------------
Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
autocmd VimEnter * if !argc() | NERDTree | endif


" -------------- CTRL-P global search -----------
"  you're gonna want this 
Plugin 'kien/ctrlp.vim'

" no swap files
set noswapfile

" ------------- Good status bar ----------------------------
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" ------------- preserve undo ----------------------------
" " tell it to use an undo file
set undofile
" set a directory to store the undo history
set undodir=/home/orson/.vimundo
