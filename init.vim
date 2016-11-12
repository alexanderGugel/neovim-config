" Make backspace behave in a sane manne:r.
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
set runtimepath^=~/.config/nvim/bundle/tagbar
set runtimepath^=~/.config/nvim/bundle/typescript-vim
set runtimepath^=~/.config/nvim/bundle/vim-go
" set runtimepath^=~/.config/nvim/bundle/nerdtree

" change airline theme.
let g:airline_theme = 'luna'

" Ignore .gitignore entries.
let g:ctrlp_user_command = ['.git', 'sh -c "cd %s && git ls-files -co --exclude-standard"']

" Display line numbers.
set number

" Highlight and remove trailing whitespace.
" http://stackoverflow.com/a/13795287
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction
autocmd BufWritePre     *.js :call TrimWhiteSpace()

let g:airline_powerline_fonts = 1

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
nmap <C-K> :TagbarToggle<CR>

" autocmd vimenter * NERDTree
" map <C-n> :NERDTreeToggle<CR>

let g:solarized_termcolors=256

set background=dark
colorscheme solarized

set spell spelllang=en_us

" See https://github.com/fatih/vim-go#example-mappings
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

au FileType go nmap <Leader>s <Plug>(go-implements)

au FileType go nmap <Leader>i <Plug>(go-info)

au FileType go nmap <Leader>e <Plug>(go-rename)

