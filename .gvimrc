


" Pathogen
execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in ‘runtimepath’


filetype plugin indent on
syntax on

set expandtab

set smarttab

"" 1tab == 4 spaces

set shiftwidth=4 
set softtabstop=4
set tabstop=4

" color scheme of the moment:
syntax on

colorscheme slate

cd C:\Users\bziobrow\Source

set nu

hi NonText guifg=bg
" Add ctrl-n breaks a new line 
"NERDTree

"setting up leader as something by default its /

":let mapleader = ""

" Quickly insert an empty new line without entering insert mode
    nnoremap <Leader>o o<Esc>
    nnoremap <Leader>O O<Esc>

" Auto change the directory to the current file I'm working on
let g:NERDTreeChDirMode = 2
let g:ctrlp_working_path_mode = 'rw'
set guifont =Consolas:h14
" autocmd BufEnter * lcd %:p:h 

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar


:nnoremap <F5> :buffers<CR>:buffer<Space>
set wildchar=<Tab> wildmenu wildmode=full
