


" -------------------------------------------------------------------------------------
" <Leader>ww -- 打开默认的 wiki 目录文件
" <Leader>wt -- 在新标签（Tab）中打开 wiki 目录文件
" <Leader>ws -- 在多个 wiki 中选择并打开该 wiki 的目录文件
" <Leader>wd -- 删除当前 wiki 文件
" <Leader>wr -- 重命名当前 wiki 文件
" <Enter> -- 创建或打开 wiki 链接
" <Shift-Enter> -- 先上下分屏再打开 wiki 链接（若非链接则先创建）
" <Ctrl-Enter> -- 先左右分屏再打开 wiki 链接（若非链接则先创建）
" <Backspace> -- 返回之前浏览的 wiki 文件
" <Tab> -- 跳到本文件中下一个 wiki 链接
" <Shift-Tab> -- 跳到本文件中上一个 wiki 链接


" :Vimwiki2HTML -- 将当前 wiki 文件转换成 HTML 网页
" :VimwikiAll2HTML -- 把所有 wiki 文件转换成 HTML 网页
" :help vimwiki-commands -- 显示全部命令

let g:vimwiki_filetypes = ['markdown']
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]


  " let g:vimwiki_key_mappings =
    " \ {
    " \   'all_maps': 1,
    " \   'global': 1,
    " \   'headers': 1,
    " \   'text_objs': 1,
    " \   'table_format': 1,
    " \   'table_mappings': 1,
    " \   'lists': 1,
    " \   'links': 1,
    " \   'html': 1,
    " \   'mouse': 1,
    " \ }
"
"
"
" let g:vimwiki_diary_months = {
      " \ 1: 'January', 2: 'February', 3: 'March',
      " \ 4: 'April', 5: 'May', 6: 'June',
      " \ 7: 'July', 8: 'August', 9: 'September',
      " \ 10: 'October', 11: 'November', 12: 'December'
      " \ }
