" sets ruler shows line and column number
set ruler

" highlights line containing cursor
set cursorline

" show line number
set number

" get normat backspace behaviour
set backspace=2

" enable pathogen package manager
call pathogen#infect()

" indentation depending on file type
filetype plugin indent on

" enable color coding of files
syntax enable

" Solarized theme stuff
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
set laststatus=2
let g:Powerline_symbols = 'fancy'

" ctrlp to search files
set runtimepath^=~/.vim/bundle/ctrlp.vim

" silver search exhaustive search
"let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ackprg = 'ag --vimgrep'
set runtimepath^=~/.vim/bundle/ag

" enable mouse
set mouse=a

" copy on clipboard
set clipboard=unnamed

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

