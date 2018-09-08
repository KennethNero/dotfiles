execute pathogen#infect()

filetype plugin indent on

syntax on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set cursorline
set autoindent

let g:TerminusInsertCursorShape=1
let g:TerminusReplaceCursorShape=2

set background=dark
let g:solarized_termcolors=256

map <C-n> :NERDTreeToggle<CR>

set number
set relativenumber

set laststatus=2
set noshowmode

if !has('gui_running')
     set t_Co=256
endif


colorscheme jellybeans

let g:jellybeans_overrides = {
    \    'background': { 'guibg': '333333' },
\}
let g:jellybeans_use_lowcolor_black = 1
