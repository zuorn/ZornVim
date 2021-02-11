"设置跳出自动补全的括号
func SkipPair()  
    if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'  
        return "\<ESC>la"  
    else  
        return "\t"  
    endif  
endfunc  
" 将C-n 键绑定为跳出括号  
" inoremap <C-n> <c-r>=SkipPair()<CR>


" 中文输入法切换
  " let g:input_toggle = 0
  " function! Fcitx2en()
     " let s:input_status = system("fcitx-remote")
     " if s:input_status == 2
        " let g:input_toggle = 1
        " let l:a = system("fcitx-remote -c")
     " endif
  " endfunction
"
  " function! Fcitx2zh()
     " let s:input_status = system("fcitx-remote")
     " if s:input_status != 2 && g:input_toggle == 1
        " let l:a = system("fcitx-remote -o")
        " let g:input_toggle = 0
     " endif
  " endfunction
"
  " set timeoutlen=150
  " autocmd InsertLeave * call Fcitx2en()
  " autocmd InsertEnter * call Fcitx2zh()

