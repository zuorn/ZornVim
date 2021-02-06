
" | |/ /___ _   _ ___|  \/  | __ _ _ __  _ __ (_)_ __   __ _
" | ' // _ \ | | / __| |\/| |/ _` | '_ \| '_ \| | '_ \ / _` |
" | . \  __/ |_| \__ \ |  | | (_| | |_) | |_) | | | | | (_| |
" |_|\_\___|\__, |___/_|  |_|\__,_| .__/| .__/|_|_| |_|\__, |
"           |___/                 |_|   |_|            |___/

" Basic Key Mappings
imap <C-h> <C-w>h
imap <C-j> <C-w>j
imap <C-k> <C-w>k
imap <C-l> <C-w>l

" Leader key
let mapleader=" "
" let localleader=";"

" Better indenting
vnoremap < <gv
vnoremap > >gv


" Make Y to copy till the end of the line
nnoremap Y Y$
" Copy to system clipboard
vnoremap Y "+y

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Better nav for omnicomplete
" inoremap <expr> <C-j> <C-n>
" inoremap <expr> <C-k> <C-P>
inoremap <C-j> <C-n>
inoremap <C-k> <C-P>


" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>
vnoremap jk <Esc>
vnoremap kj <Esc>


inoremap <expr> <c-j> ("\<C-n>")
cnoremap <expr> <c-k> ("\<C-p>")
cnoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")


" Move selected line / block of text in visual mode
" xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Alternate way to save
nnoremap <silent> <C-s> :w<CR>
noremap <Enter> :w<CR>
" Alternate way to quit
nnoremap <silent> <C-Q> :wq!<CR>
" nnoremap <silent> q :q<CR>
nnoremap <silent> q :Bdelete<CR>
nnoremap <silent> Q :q!<CR>

" Use control-c instead of escape
nnoremap <silent> <C-c> <Esc>
vnoremap <silent> <C-c> <Esc>


" <TAB>: completion.
" inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Terminal window navigation
" tnoremap <C-h> <C-\><C-N><C-w>h
" tnoremap <C-j> <C-\><C-N><C-w>j
" tnoremap <C-k> <C-\><C-N><C-w>k
" tnoremap <C-l> <C-\><C-N><C-w>l
" inoremap <C-h> <C-\><C-N><C-w>h
" inoremap <C-j> <C-\><C-N><C-w>j
" inoremap <C-k> <C-\><C-N><C-w>k
" inoremap <C-l> <C-\><C-N><C-w>l
" tnoremap <Esc> <C-\><C-n>
"
" Use alt + hjkl to resize windows
" nnoremap <silent> <M-j>    :resize -2<CR>
" nnoremap <silent> <M-k>    :resize +2<CR>
" nnoremap <silent> <M-h>    :vertical resize -2<CR>
" nnoremap <silent> <M-l>    :vertical resize +2<CR>

" nnoremap <silent> <C-Up>    :resize -2<CR>
" nnoremap <silent> <C-Down>  :resize +2<CR>
" nnoremap <silent> <C-Left>  :vertical resize -2<CR>
" nnoremap <silent> <C-Right> :vertical resize +2<CR>
"

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
