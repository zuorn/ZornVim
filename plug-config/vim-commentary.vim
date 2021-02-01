" autocmd FileType apache setlocal commentstring=#\ %s
" nnoremap <silent> <C-l> :Commentary<CR>
" vnoremap <silent> <C-l> :Commentary<CR>

function! Comment()
  if (mode() == "n" )
    execute "Commentary"
  else    
    execute "'<,'>Commentary"
  endif
 endfunction
vnoremap <silent> <space>; :call Comment()

