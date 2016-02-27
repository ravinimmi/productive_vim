" sets ruler shows line and column number
set ruler

" highlights line containing cursor
set cursorline

" show line number
set number

" get normat backspace behaviour
set backspace=2

" tabs and indents
set tabstop=4 shiftwidth=4 expandtab
set smartindent

" add matching characters
inoremap { {}
inoremap ( ()
inoremap [ []
inoremap ' ''
inoremap " ""

" enable mouse
set mouse=a

" copy on clipboard
set clipboard=unnamed




" External Packages


" enable pathogen package manager
call pathogen#infect()

" enable color coding of files
syntax on

" indentation depending on file type
filetype plugin indent on

" Solarized theme stuff
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

" NERD Tree
map <F2> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
autocmd BufWinEnter * NERDTreeMirror
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2
let g:Powerline_symbols = 'fancy'

" ctrlp to search files
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v([\/](\.(git|hg|svn))|(node_modules))$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" silver search exhaustive search
"let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ackprg = 'ag --vimgrep'
set runtimepath^=~/.vim/bundle/ag

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

