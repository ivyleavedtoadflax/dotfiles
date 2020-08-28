call plug#begin('~/.vim/plugged')

Plug 'jreybert/vimagit'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sensible'
Plug 'dracula/vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'chrisbra/csv.vim'
Plug 'scrooloose/nerdtree'
Plug 'numirias/semshi', {'do':':UpdateRemotePlugins'}

call plug#end()

filetype plugin indent on
"let g:loaded_python_provider=1
"let g:loaded_python3_provider=1
let g:ale_python_flake8_use_global = 1
let g:ale_python_flake8_executable = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

"Spaces & Tabs {{{
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
 " }}} Spaces & Tabs

set number
set exrc
set secure

inoremap jjj <ESC><CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-n> :NERDTreeToggle<CR>

map <C-t><left> :tabl<cr>
map <C-t><right> :tabr<cr>

set colorcolumn=81

" Let vim play nicely with yaml files

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Set custom highlights for Gdiff

hi DiffAdd guifg=NONE ctermfg=NONE guibg=#464632 ctermbg=238 gui=NONE cterm=NONE
hi DiffChange guifg=NONE ctermfg=NONE guibg=#335261 ctermbg=239 gui=NONE cterm=NONE
hi DiffDelete guifg=#f43753 ctermfg=203 guibg=#79313c ctermbg=237 gui=NONE cterm=NONE
hi DiffText guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=reverse cterm=reverse
