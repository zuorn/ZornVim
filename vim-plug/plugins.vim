
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
    " Vista
    Plug 'liuchengxu/vista.vim'
    " which key
    Plug 'liuchengxu/vim-which-key'
    " 注释
    Plug 'preservim/nerdcommenter'
    " 文件管理器
    Plug 'kevinhwang91/rnvimr'
    " Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " Sneak
    Plug 'justinmk/vim-sneak'
    " 缓冲区操作 
    Plug 'moll/vim-bbye'
    " Vim Wiki
    Plug 'vimwiki/vimwiki'
    " 自动缩进
    Plug 'tpope/vim-sleuth'
    " 添加代码缩进
    Plug 'yggdroot/indentline'
    " 自动补全双括号等
    Plug 'jiangmiao/auto-pairs'

    Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

    Plug 'kyazdani42/nvim-web-devicons' " lua
    Plug 'ryanoasis/vim-devicons' " vimscript
    Plug 'mg979/vim-xtabline'

    Plug 'ajmwagar/vim-deus'  
    Plug 'joshdick/onedark.vim'
    " Colorizer
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

    " 对齐
    Plug 'godlygeek/tabular'
    " Bullets.vim是一个用于自动项目符号列表的Vim插件。
    Plug 'dkarter/bullets.vim'


    " Markdown
    Plug 'iamcco/markdown-preview.nvim'
    Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}
    Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
    Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }


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
    Plug 'tpope/vim-surround'
    " Have the file system follow you around
    Plug 'airblade/vim-rooter'

    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'christianchiarulli/nvcode-color-schemes.vim'

    " Plug 'nvim-treesitter/playground'

    " markdown
    Plug 'machakann/vim-highlightedyank'

    " Snippets
    Plug 'honza/vim-snippets'
    " Plug 'mattn/emmet-vim'

    " --------------------------------------- TODO ----------------------------------
     " Convert binary, hex, etc..
    Plug 'glts/vim-radical'
     " Text Navigation
    Plug 'unblevable/quick-scope'
     " Closetags
    Plug 'alvan/vim-closetag'
     " Better tabline
    Plug 'romgrk/barbar.nvim'
      " Auto change html tags
    Plug 'AndrewRadev/tagalong.vim'
     " live server
    Plug 'turbio/bracey.vim'
    " Easily Create Gists
    Plug 'mattn/vim-gist'
    Plug 'mattn/webapi-vim'


    " --------------------------------------- abandon -------------------------------
    " 状态行
    " Plug 'vim-airline/vim-airline'
    " 状态行主题
    " Plug 'vim-airline/vim-airline-themes'


call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

