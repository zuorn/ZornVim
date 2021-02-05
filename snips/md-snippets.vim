"autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
" autocmd Filetype markdown inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
" autocmd Filetype markdown inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
" autocmd Filetype markdown inoremap <buffer> ,n ---<Enter><Enter>
" autocmd Filetype markdown inoremap <buffer> ,b **** <++><Esc>F*hi
" autocmd Filetype markdown inoremap <buffer> ,s ~~~~ <++><Esc>F~hi
" autocmd Filetype markdown inoremap <buffer> ,i ** <++><Esc>F*i
" autocmd Filetype markdown inoremap <buffer> ,d `` <++><Esc>F`i
" autocmd Filetype markdown inoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
" autocmd Filetype markdown inoremap <buffer> ,m - [ ]
" autocmd Filetype markdown inoremap <buffer> ,p ![](<++>) <++><Esc>F[a
" autocmd Filetype markdown inoremap <buffer> ,a [](<++>) <++><Esc>F[a
" autocmd Filetype markdown inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
" autocmd Filetype markdown inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
" autocmd Filetype markdown inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
" autocmd Filetype markdown inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
" autocmd Filetype markdown inoremap <buffer> ,l --------<Enter>
"

autocmd Filetype markdown inoremap <buffer> <C-j> <Esc>/<++><CR>:nohlsearch<CR>"_c4l
autocmd Filetype markdown inoremap <buffer> <C-w> <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
autocmd Filetype markdown inoremap <buffer> <C-n> ---<Enter><Enter>
" 加粗
autocmd Filetype markdown inoremap <buffer> <C-b> **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> <C-s> ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap <buffer> <C-i> ** <++><Esc>F*i
autocmd Filetype markdown inoremap <buffer> <C-d> `` <++><Esc>F`i
autocmd Filetype markdown inoremap <buffer> <C-k> ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap <buffer> <C-m> - [ ] 
autocmd Filetype markdown inoremap <buffer> <C-p> ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> <C-a> [](<++>) <++><Esc>F[a


" autocmd Filetype markdown inoremap <buffer> <C-u> #<Space><Enter><++><Esc>kA
" autocmd Filetype markdown inoremap <buffer> <C-i> ##<Space><Enter><++><Esc>kA
" autocmd Filetype markdown inoremap <buffer> <C-o> ###<Space><Enter><++><Esc>kA
" autocmd Filetype markdown inoremap <buffer> <C-p> ####<Space><Enter><++><Esc>kA
"

autocmd Filetype markdown inoremap <buffer> <C-l> --------<Enter>
