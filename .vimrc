syntax on
filetype plugin indent on
set number
set relativenumber
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set mouse=a
colorscheme slate
set backspace=indent,eol,start
set cursorline
"let g:airline_theme='dracula'
call plug#begin()
"Plug 'neoclide/coc.nvim'
Plug 'preservim/nerdtree'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
call plug#end()
inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~ '\s'
endfunction

if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"inoremap <silent><expr> <Tab>
  "  \ pumVisible() ? :"\<C-n> " : 
 "   \ <SID>check_back_space() ? "" "\<Tab>" : 
 "  \ coc#refresh()
 "
map <F9> :!g++ -g % -o %:r && ./%:r <CR>
map <F5> :!g++ -g % -o %:r <CR>
"autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++20   -O2   % -o %:r && ./%:r <CR>
"syntax on
"set nu
"set clipboard=unnamedplus
"set mouse=a
"set tabstop=2
"set autoindent
"set shiftwidth=2
"set softtabstop=2
"set smarttab
"set expandtab
"set smartcase

"set t_Co=256
"set background=dark
"colorscheme monokai

autocmd filetype java nnoremap <F5> :w <bar> !javac % && java -enableassertions %:r <CR>
autocmd filetype python nnoremap <F5> :w <bar> !python % <CR>
autocmd filetype perl nnoremap <F5> :w <bar> !perl % <CR>
autocmd filetype go nnoremap <F5> :w <bar> !go build % && ./%:r <CR>
