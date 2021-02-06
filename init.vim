
"
" |_ _|_ __ (_) |\ \   / (_)_ __ ___
"  | || '_ \| | __\ \ / /| | '_ ` _ \
"  | || | | | | |_ \ V / | | | | | | |
" |___|_| |_|_|\__| \_/  |_|_| |_| |_|
"

" General Settings
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/which-key.vim


" Themes
source $HOME/.config/nvim/themes/theme.vim

" abandon
" source $HOME/.config/nvim/plug-config/airline.vim
" source $HOME/.config/nvim/plug-config/dashboard.vim

source $HOME/.config/nvim/plug-config/vimspector.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/xtabline.vim
source $HOME/.config/nvim/plug-config/startify.vim
source $HOME/.config/nvim/plug-config/vista.vim
source $HOME/.config/nvim/plug-config/nerdcommenter.vim
source $HOME/.config/nvim/plug-config/rooter.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/bullets.vim
source $HOME/.config/nvim/plug-config/undotree.vim
source $HOME/.config/nvim/plug-config/goyo.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/vim-wiki.vim
source $HOME/.config/nvim/plug-config/rainbow.vim
source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/plug-config/codi.vim
source $HOME/.config/nvim/plug-config/galaxyline.vim
source $HOME/.config/nvim/plug-config/accelerated-jk.vim
source $HOME/.config/nvim/plug-config/vim-auto-save.vim
source $HOME/.config/nvim/plug-config/barbar.vim
source $HOME/.config/nvim/plug-config/tabular.vim

" git integration
source $HOME/.config/nvim/plug-config/git-messenger.vim
source $HOME/.config/nvim/plug-config/gitgutter.vim

" coc
source $HOME/.config/nvim/plug-config/coc/coc.vim
source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim

" lua
luafile $HOME/.config/nvim/lua/ZornVimline.lua
luafile $HOME/.config/nvim/lua/plug-colorizer.lua


" TODO
" MarkDown
" source $HOME/.config/nvim/plug-config/markdown-preview.vim
" source $HOME/.config/nvim/snips/md-snippets.vim
source $HOME/.config/nvim/plug-config/instant-markdown.vim
source $HOME/.config/nvim/plug-config/markdown.vim



" key mappings
inoremap <expr> <C-j> <C-n>
inoremap <expr> <C-k> <C-p>

set shell=bash\ -i

