
" auto install

if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

" debug
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

" 修改启动界面
Plug 'mhinz/vim-startify'
" vim 中文帮助文档
Plug 'yianwillis/vimcdoc'
" which key 提示相关功能的键位
Plug 'liuchengxu/vim-which-key'
" 注释
Plug 'preservim/nerdcommenter'
" 文件管理器
Plug 'kevinhwang91/rnvimr'
" 缓冲区操作
Plug 'moll/vim-bbye'
" 自动缩进
Plug 'tpope/vim-sleuth'
" 添加代码缩进线
Plug 'yggdroot/indentline'
" 自动补全双括号等
Plug 'jiangmiao/auto-pairs'
" 彩色括号
Plug 'luochen1990/rainbow'
" lua 状态栏
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
" 图标
Plug 'kyazdani42/nvim-web-devicons' " lua
Plug 'ryanoasis/vim-devicons' " vimscript
" 更好的顶栏
Plug 'mg979/vim-xtabline'
" 更好的 buffers 跳转
Plug 'romgrk/barbar.nvim'
" Colorizer 颜色代码显示颜色
Plug 'norcalli/nvim-colorizer.lua'
" vim 语言包
Plug 'sheerun/vim-polyglot'
" 快速跳转
Plug 'easymotion/vim-easymotion'
" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf.vim'
" 查找与替换
Plug 'brooth/far.vim'
" Zen 模式
Plug 'junegunn/goyo.vim'
" accelerated-jk 使光标在jk移动时速度随时间的增加而增加
Plug 'rhysd/accelerated-jk'
" 自动保存
Plug 'vim-scripts/vim-auto-save'
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 普通模式和可视模式下按 ga+ 符号 gaip+ 符号可根据符号对齐文本
Plug 'junegunn/vim-easy-align'

" Markdown
" 对齐
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
"  实时预览
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
" markdown toc
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
" Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }

" Bullets.vim是一个用于自动项目符号列表的Vim插件。
Plug 'dkarter/bullets.vim'

" 撤销历史
Plug 'mbbill/undotree'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'rhysd/git-messenger.vim'

" Easily Create Gists
Plug 'mattn/vim-gist'
Plug 'mattn/webapi-vim'

" Terminal
Plug 'voldikss/vim-floaterm'

" Interactive code
Plug 'metakirby5/codi.vim'

" Surround
" 更好的更改括号
" 用法：cs"' 将“ 更改为 ‘  删除：ds"
" 更详细的用法：https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'
" Have the file system follow you around
Plug 'airblade/vim-rooter'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'christianchiarulli/nvcode-color-schemes.vim'
" 查看树信息
Plug 'nvim-treesitter/playground'

" Closetags
Plug 'alvan/vim-closetag'

" 这个插件应该可以帮助您使用Vim的内置功能f<char>（两次将光标移至 <char>）进行两次或三次击键来排成一行。
Plug 'unblevable/quick-scope'
" Better tabline
" Auto change html tags
Plug 'AndrewRadev/tagalong.vim'
" 在Vim中进行实时html，css和javascript编辑的插件
" 命令：Bracey
Plug 'turbio/bracey.vim'
" Vim Wiki
Plug 'vimwiki/vimwiki'
" 自动格式化
Plug 'Chiel92/vim-autoformat'

" Sneak
Plug 'justinmk/vim-sneak'

" --------------------------------------- TODO ----------------------------------

" Plug 'pechorin/any-jump.vim'


Plug 'liuchengxu/vista.vim'

" Snippets
" Plug 'honza/vim-snippets'

" 进制转换
" Plug 'glts/vim-radical'

" telescope
" Gaze deeply into unknown regions using the power of the moon.
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
"

" 中文输入法 不是很好用
" Plug 'lyokha/vim-xkbswitch'
" 启用
" let g:XkbSwitchEnabled = 1


" --------------------------------------- 弃用 -------------------------------
" 状态行
" Plug 'vim-airline/vim-airline'
" 状态行主题
" Plug 'vim-airline/vim-airline-themes'
" spacevim markdown


call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
            \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
            \|   PlugInstall --sync | q
            \| endif

