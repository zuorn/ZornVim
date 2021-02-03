" auto
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " 修改启动界面
    Plug 'mhinz/vim-startify'
    Plug 'glepnir/dashboard-nvim'

 
    " Vista
    Plug 'liuchengxu/vista.vim'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'

    " 注释
    Plug 'tpope/vim-commentary'

    " 文件管理器
    Plug 'kevinhwang91/rnvimr'

    " Sneak
    Plug 'justinmk/vim-sneak'

    " Intuitive buffer closing
    Plug 'moll/vim-bbye'

    " Vim Wiki
    Plug 'https://github.com/vimwiki/vimwiki.git'

    " Rainbow brackets
    " 彩虹括号
    Plug 'luochen1990/rainbow'

    " 自动缩进
    Plug 'tpope/vim-sleuth'

    " 添加代码缩进
    Plug 'yggdroot/indentline'

    " 自动补全双括号等
    Plug 'jiangmiao/auto-pairs'

    " --------------------------------------- 主题 -------------------------------
    " 状态行
    Plug 'vim-airline/vim-airline'
    " 状态行主题
    Plug 'vim-airline/vim-airline-themes'

    " 顶栏
    Plug 'mg979/vim-xtabline'

    " 主题
    " 看文档 
    Plug 'ajmwagar/vim-deus'  
    Plug 'crusoexia/vim-monokai'
    Plug 'joshdick/onedark.vim'
    " Plug 'rakr/vim-one'

    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'

    " Icons
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'



    " vim 语言包
    Plug 'sheerun/vim-polyglot'

    " 按 ' 键和一个 字母 跳转至 字母
    " 快速跳转
    Plug 'easymotion/vim-easymotion'

    " 翻译
    " Plug 'voldikss/coc-translator'



    " 搜索
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



    " --------------------------------------- 自动补全 -------------------------------

    " coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " --------------------------------------- Markdown -------------------------------
    " Markdown Preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }

    " Markdown
    Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
    Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
    Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
    " Bullets.vim是一个用于自动项目符号列表的Vim插件。
    Plug 'dkarter/bullets.vim'




    " undo time travel
    Plug 'mbbill/undotree'

    " Swap windows
    Plug 'wesQ3/vim-windowswap'


    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'rhysd/git-messenger.vim'

    " Terminal
    Plug 'voldikss/vim-floaterm'

    " Interactive code
    Plug 'metakirby5/codi.vim'

    " Surround
    " Plug 'tpope/vim-surround'
    " Have the file system follow you around
    " Plug 'airblade/vim-rooter'
    " " Better Syntax Support
    " Plug 'sheerun/vim-polyglot'

    " Treesitter
    " Plug 'nvim-treesitter/nvim-treesitter'
    " Plug 'nvim-treesitter/playground'

    " Snippets
    Plug 'honza/vim-snippets'
    " Plug 'mattn/emmet-vim'


    " Smooth scroll
    " Plug 'psliwka/vim-smoothie'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

