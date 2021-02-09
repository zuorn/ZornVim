" Keyboard binding rules

  "autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
  autocmd Filetype markdown inoremap <buffer> <C-f> <Esc>/<++><CR>:nohlsearch<CR>"_c4l
  " autocmd Filetype markdown inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
  " autocmd Filetype markdown inoremap <buffer> <C-n> ---<Enter><Enter>
  autocmd Filetype markdown inoremap <buffer> <C-b> **** <++><Esc>F*hi
  " autocmd Filetype markdown inoremap <buffer> <C-s> ~~~~ <++><Esc>F~hi
  " autocmd Filetype markdown inoremap <buffer> ,i ** <++><Esc>F*i
  " autocmd Filetype markdown inoremap <buffer> <C-v> `` <++><Esc>F`i
  " autocmd Filetype markdown inoremap <buffer> <C-k> ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
  " autocmd Filetype markdown inoremap <buffer> ,m - [ ]
  " autocmd Filetype markdown inoremap <buffer> ,p ![](<++>) <++><Esc>F[a
  " autocmd Filetype markdown inoremap <buffer> ,a [](<++>) <++><Esc>F[a
  " autocmd Filetype markdown inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
  " autocmd Filetype markdown inoremap <buffer> <C-2> ##<Space><Enter><++><Esc>kA
  " autocmd Filetype markdown inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
  " autocmd Filetype markdown inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
  " autocmd Filetype markdown inoremap <buffer> ,l --------<Enter>




" 中文输入法切换
  let g:input_toggle = 0
  function! Fcitx2en()
     let s:input_status = system("fcitx-remote")
     if s:input_status == 2
        let g:input_toggle = 1
        let l:a = system("fcitx-remote -c")
     endif
  endfunction

  function! Fcitx2zh()
     let s:input_status = system("fcitx-remote")
     if s:input_status != 2 && g:input_toggle == 1
        let l:a = system("fcitx-remote -o")
        let g:input_toggle = 0
     endif
  endfunction

  set timeoutlen=150
  autocmd InsertLeave * call Fcitx2en()
  autocmd InsertEnter * call Fcitx2zh()
