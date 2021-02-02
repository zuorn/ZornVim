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
 
    " Vista
    " Plug 'liuchengxu/vista.vim'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'


    " Better Comments
    Plug 'tpope/vim-commentary'

    " 文件管理器
    Plug 'kevinhwang91/rnvimr'
    " Status Line
    " 需要 nvim5.0以上版本
    " Plug 'glepnir/galaxyline.nvim'
    " Sneak
    Plug 'justinmk/vim-sneak'

    " Vim Wiki
    Plug 'https://github.com/vimwiki/vimwiki.git'
    " 文件目录树
    Plug 'preservim/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'

    " Swap windows
    Plug 'wesQ3/vim-windowswap'

    " Rainbow brackets
    " 彩虹括号
    Plug 'luochen1990/rainbow'

    " auto set indent settings
    " 自动缩进
    Plug 'tpope/vim-sleuth'
    " --------------------------------------- 主题 -------------------------------
    " 状态行
    Plug 'vim-airline/vim-airline'
    " 状态行主题
    Plug 'vim-airline/vim-airline-themes'
    " 主题
    Plug 'ajmwagar/vim-deus'
    Plug 'crusoexia/vim-monokai'
    Plug 'joshdick/onedark.vim'
    Plug 'rakr/vim-one'

    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'

    " Icons
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'

    " 添加代码缩进线
    Plug 'yggdroot/indentline'

    " 自动补全双括号等
    Plug 'jiangmiao/auto-pairs'


    " vim 语言包
    Plug 'sheerun/vim-polyglot'
    " 按 ' 键和一个 字母 跳转至 字母
    " 快速跳转
    Plug 'easymotion/vim-easymotion'

    " 查找与替换
    Plug 'brooth/far.vim'
    " 翻译
    Plug 'voldikss/coc-translator'



    " 搜索
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
    Plug 'junegunn/fzf.vim'


    " 顶栏
    Plug 'mg979/vim-xtabline'

    " Zen 模式
    Plug 'junegunn/goyo.vim'

    " accelerated-jk 使光标在jk移动时速度随时间的增加而增加
    Plug 'rhysd/accelerated-jk'
    
    " 自动保存
    Plug 'vim-scripts/vim-auto-save'

    " --------------------------------------- tmux 支持 -------------------------------

    " Smooth scroll
    " Plug 'psliwka/vim-smoothie'

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


    " " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'rhysd/git-messenger.vim'
    " " Terminal
    Plug 'voldikss/vim-floaterm'


    " Initialize plugin system

    " " Change dates fast
    " Plug 'tpope/vim-speeddating'
    " " Convert binary, hex, etc..
    " Plug 'glts/vim-radical'
    " " Repeat stuff
    " Plug 'tpope/vim-repeat'
    " " Text Navigation
    " Plug 'unblevable/quick-scope'
    " " Useful for React Commenting
    " Plug 'suy/vim-context-commentstring'
    " " highlight all matches under cursor
    " " Plug 'RRethy/vim-illuminate'

  " if exists('g:vscode')
    " Easy motion for VSCode
    " Plug 'asvetliakov/vim-easymotion'
    " Plug 'ChristianChiarulli/vscode-easymotion'
    " Plug 'machakann/vim-highlightedyank'
  " else

    " Surround
    " Plug 'tpope/vim-surround'
    " Have the file system follow you around
    " Plug 'airblade/vim-rooter'
    " " Better Syntax Support
    " Plug 'sheerun/vim-polyglot'

    " " Treesitter
    " Plug 'nvim-treesitter/nvim-treesitter'
    " Plug 'nvim-treesitter/playground'

    " " Closetags
    " Plug 'alvan/vim-closetag'


    " Snippets
    " Plug 'honza/vim-snippets'
    " Plug 'mattn/emmet-vim'
    " " Interactive code
    " Plug 'metakirby5/codi.vim'
    " Better tabline
    " 报错(可能需要5.0以上版本)
    " Plug 'romgrk/barbar.nvim'
    " Find and replace
    " Plug 'ChristianChiarulli/far.vim'
    " " Auto change html tags
    " Plug 'AndrewRadev/tagalong.vim'
    " live server
    " Plug 'turbio/bracey.vim'
    " " " async tasks
    " Plug 'skywind3000/asynctasks.vim'
    " Plug 'skywind3000/asyncrun.vim'
    " " Easily Create Gists
    " Plug 'mattn/vim-gist'
    " Plug 'mattn/webapi-vim'
    " " Intuitive buffer closing
    " Plug 'moll/vim-bbye'
    " " Debugging
    " Plug 'puremourning/vimspector'
    " Plug 'szw/vim-maximizer'
    " " Neovim in Browser
    " Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(1) } }
    " Async Linting Engine
    " TODO make sure to add ale config before plugin
    " Plug 'dense-analysis/ale'
    " Better Whitespace
    " Plug 'ntpeters/vim-better-whitespace'
    " Multiple Cursors
    " TODO add this back in change from C-n
    " Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    " Plug 'yuezk/vim-js'
    " Plug 'maxmellon/vim-jsx-pretty'
    " Plug 'jelera/vim-javascript-syntax'
    " Plugin Graveyard

    " Debug
    " Plug 'mfussenegger/nvim-dap'
    " Plug 'nvim-dap-virtual-text'
    " Plug 'nvim-treesitter/nvim-treesitter-refactor'
    " Plug 'nvim-treesitter/nvim-treesitter-textobjects'
    " Plug 'romgrk/nvim-treesitter-context'
    " Minimap
    " Plug 'wfxr/minimap.vim'
    " jsx syntax support
    " Typescript syntax
    " Plug 'HerringtonDarkholme/yats.vim'
    " Multiple Cursors
    " Plug 'terryma/vim-multiple-cursors'
    " Plug 'kaicataldo/material.vim'
    " Plug 'tomasiser/vim-code-dark'
    " Plug 'mg979/vim-xtabline'
    " Files
    " Plug 'tpope/vim-eunuch'
    " Better Comments
    " Plug 'jbgutierrez/vim-better-comments'
    " Echo doc
    " Plug 'Shougo/echodoc.vim'
    " Plug 'hardcoreplayers/spaceline.vim'
    " Ranger
    " Plug 'francoiscabrol/ranger.vim'
    " Making stuff
    " Plug 'neomake/neomake'
    " Plug 'mhinz/vim-signify'
    " Plug 'preservim/nerdcommenter'
    " Plug 'brooth/far.vim'
    " Plug 'atishay/far.vim'
    " Plug 'romgrk/lib.kom'
    " Plug 'brooth/far.vim'
    " Debugging
  " endif

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

