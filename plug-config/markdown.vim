
" markdown preview

    let g:mkdp_path_to_chrome = "open -a Google\\ Chrome"
    " or
    " let g:mkdp_path_to_chrome = "/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome"
    " 设置 chrome 浏览器的路径（或是启动 chrome（或其他现代浏览器）的命令）
    " 如果设置了该参数, g:mkdp_browserfunc 将被忽略

    let g:mkdp_browserfunc = 'MKDP_browserfunc_default'
    " vim 回调函数, 参数为要打开的 url

    let g:mkdp_auto_start = 0
    " 设置为 1 可以在打开 markdown 文件的时候自动打开浏览器预览，只在打开
    " markdown 文件的时候打开一次

    let g:mkdp_auto_open = 0
    " 设置为 1 在编辑 markdown 的时候检查预览窗口是否已经打开，否则自动打开预
    " 览窗口

    let g:mkdp_auto_close = 1
    " 在切换 buffer 的时候自动关闭预览窗口，设置为 0 则在切换 buffer 的时候不
    " 自动关闭预览窗口

    let g:mkdp_refresh_slow = 0
    " 设置为 1 则只有在保存文件，或退出插入模式的时候更新预览，默认为 0，实时
    " 更新预览

    let g:mkdp_command_for_global = 0
    " 设置为 1 则所有文件都可以使用 MarkdownPreview 进行预览，默认只有 markdown
    " 文件可以使用改命令

    let g:mkdp_open_to_the_world = 0
    " 设置为 1, 在使用的网络中的其他计算机也能访问预览页面
    " 默认只监听本地（127.0.0.1），其他计算机不能访问


" markdown - toc
    
    
    " 自动更新
    let g:vmt_auto_update_on_save = 0


" vim-markdown

    " 禁用折叠
    let g:vim_markdown_folding_disabled = 1

    " 折叠级别
    " let g:vim_markdown_folding_level = 3
    " 禁用默认键盘映射
    let g:vim_markdown_no_default_key_mappings = 1

    " 强调强制一行
    " let g:vim_markdown_emphasis_multiline = 0

    " 禁用隐藏
    let g:vim_markdown_conceal = 0
    " 禁用代码隐藏需添加
    let g:vim_markdown_conceal_code_blocks = 0



    " YAML Front Matter
    " let g:vim_markdown_frontmatter = 1
    " TOML Front Matter
    " let g:vim_markdown_toml_frontmatter = 1
    " JSON Front Matter
    " let g:vim_markdown_json_frontmatter = 1

    " 不自动插入符号
    let g:vim_markdown_auto_insert_bullets = 0
    " 在这种情况下，您可能还希望将新列表项的缩进设置为0，否则每次添加新列表项时都必须删除缩进：
    let g:vim_markdown_new_list_item_indent = 0




    " 默认键位：
    " gx: 在浏览器里打开链接
    " ge: open the link under the cursor in Vim for editing. Useful for relative markdown links. <Plug>Markdown_EditUrlUnderCursor
    " ]]: 下一个标题 <Plug>Markdown_MoveToNextHeader
    "
    " [[: 上一个标题 Contrast with ]c. <Plug>Markdown_MoveToPreviousHeader
    "
    " ][: 下一个同级标题（如果有的话） <Plug>Markdown_MoveToNextSiblingHeader
    "
    " []: 上一个同级标题 <Plug>Markdown_MoveToPreviousSiblingHeader
    "
    " ]c: 当前标题 <Plug>Markdown_MoveToCurHeader
    "
    " ]u: 父级标题 <Plug>Markdown_MoveToParentHeader

    " zr: 降低整个缓冲去的界别
    " zR: 打开所有折叠
    " zm: 增加整个缓冲区的折叠级别
    " zM: 完全折叠所有内容
    " za: 打开光标所在的折叠
    " zA: 以递归的方式打开折叠
    " zc: 关闭光标所在的折叠
    " zC: 递归关闭折叠
