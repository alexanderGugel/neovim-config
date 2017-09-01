" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on.
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

set runtimepath^=~/.config/nvim/bundle/vim-multiple-cursors
set runtimepath^=~/.config/nvim/bundle/ctrlp.vim
set runtimepath^=~/.config/nvim/bundle/vim-gitgutter
set runtimepath^=~/.config/nvim/bundle/vim-airline
set runtimepath^=~/.config/nvim/bundle/vim-airline-themes

" Change airline theme.
let g:airline_theme = 'solarized'
let g:airline_solarized_bg='dark'

" Ignore .gitignore entries.
let g:ctrlp_user_command = ['.git', 'sh -c "cd %s && git ls-files -co --exclude-standard"']

" Display line numbers.
set number

let g:airline_powerline_fonts = 1
let g:solarized_termcolors=256

set background=dark
colorscheme solarized

set spell spelllang=en_us

set expandtab
set shiftwidth=2
set softtabstop=2

