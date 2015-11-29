"general
set ruler
set cursorline
set number
set backspace=2
call pathogen#infect()
filetype plugin indent on

"syntax on
syntax enable

" Solarized stuff
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

" NERD Tree
map <F2> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
autocmd BufWinEnter * NERDTreeMirror

" Powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
"let g:Powerline_symbols = 'fancy'
set laststatus=2

set runtimepath^=~/.vim/bundle/ctrlp.vim

"silver search
"let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ackprg = 'ag --vimgrep'
set runtimepath^=~/.vim/bundle/ag

:set mouse=a

set clipboard=unnamed

