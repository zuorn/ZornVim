set iskeyword+=-                      	" 将破折号分隔的单词视为单词文本对象 
set formatoptions-=cro                  " 停止注释的新行继续
set relativenumber
syntax enable                           " 启用语法突出显示
set hidden                              " 保持多个缓冲区打开多个缓冲区所需
autocmd Filetype markdown set wrap
set nowrap                                " 换行
set whichwrap+=<,>,[,],h,l
set encoding=utf-8                      " 显示的编码
set pumheight=10                        " 缩小弹出菜单
set fileencoding=utf-8                  " 写入文件的编码
set ruler           		            " 一直显示光标位置
set cmdheight=2                         " 显示消息的更多空间
set mouse=a                             " 启用鼠标
set splitbelow                          " 水平分割线将自动位于下方
set splitright                          " 垂直分割将自动在右侧
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " markdown 控制隐藏 2 是开启
set tabstop=4                           " 为标签插入4个空格
set shiftwidth=2                        " 更改为缩进插入的空格字符的数量
set smarttab                            " 使制表更加智能，将使您意识到2 vs 4
set expandtab                           " 将制表符转换为空格
set smartindent                         " 使缩进变得聪明
set autoindent                          " 好的自动缩进
set laststatus=2                        " 始终显示状态行
set number                              " 行号
set cursorline                          " 启用突出显示当前行
set background=dark                     " 背景颜色
set showtabline=2                       " 一律显示标签
set noshowmode                          " 我们不再需要看到诸如INSERT之类的东西
set nobackup                            " coc推荐的
set nowritebackup                       " coc推荐的
set shortmess+=c                        " 不要将消息传递到| ins-completion-menu |。
set signcolumn=yes                      " 始终显示标志列，否则每次都会移动文本
set updatetime=300                      
set timeoutlen=100                      " 默认情况下timeoutlen为1000毫秒
" set clipboard=unnamedplus               " 在vim和其他所有内容之间复制粘贴
set incsearch
set guifont=JetBrainsMono\ Nerd\ Font
set termguicolors                       " vim-deus 推荐的
set nocompatible                        " ployglot 推荐的
filetype plugin on 


" 光标停留在上次关闭的位置
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" New stuff
" set notimeout nottimeout
" set scrolloff=1
" set sidescroll=1
" set sidescrolloff=1
" set display+=lastline
" set backspace=eol,start,indent
" set nostartofline
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" set mmp=1300
" set autochdir                           " Your working directory will always be the same as your working directory
" set foldcolumn=2                        " Folding abilities

" au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" You can't stop me
cmap w!! w !sudo tee %
