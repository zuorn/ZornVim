
"
" |_ _|_ __ (_) |\ \   / (_)_ __ ___
"  | || '_ \| | __\ \ / /| | '_ ` _ \
"  | || | | | | |_ \ V / | | | | | | |
" |___|_| |_|_|\__| \_/  |_|_| |_| |_|
"


" polyglot disable markdown
let g:polyglot_disabled = ['markdown']

" General Settings
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/which-key.vim


" Themes
source $HOME/.config/nvim/themes/theme.vim

" Plug
source $HOME/.config/nvim/plug-config/vimspector.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/polyglot.vim
source $HOME/.config/nvim/plug-config/xtabline.vim
source $HOME/.config/nvim/plug-config/startify.vim
source $HOME/.config/nvim/plug-config/nerdcommenter.vim
source $HOME/.config/nvim/plug-config/rooter.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/bullets.vim
source $HOME/.config/nvim/plug-config/undotree.vim
source $HOME/.config/nvim/plug-config/goyo.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/rainbow.vim
source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/plug-config/galaxyline.vim
source $HOME/.config/nvim/plug-config/accelerated-jk.vim
source $HOME/.config/nvim/plug-config/vim-auto-save.vim
source $HOME/.config/nvim/plug-config/tabular.vim
source $HOME/.config/nvim/plug-config/tagalong.vim
source $HOME/.config/nvim/plug-config/closetags.vim
source $HOME/.config/nvim/plug-config/easy-align.vim
" git integration
source $HOME/.config/nvim/plug-config/git-messenger.vim
source $HOME/.config/nvim/plug-config/gitgutter.vim
" coc
source $HOME/.config/nvim/plug-config/coc/coc.vim
source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim
" lua
luafile $HOME/.config/nvim/lua/ZornVimline.lua
luafile $HOME/.config/nvim/lua/plug-colorizer.lua
" core
source $HOME/.config/nvim/core/skippair.vim
" MarkDown
source $HOME/.config/nvim/snips/md.vim
source $HOME/.config/nvim/plug-config/markdown.vim


" TODO
" source $HOME/.config/nvim/snips/md-snippets.vim
" source $HOME/.config/nvim/plug-config/wiki.vim
" source $HOME/.config/nvim/plug-config/better-whitespacevim.vim
" source $HOME/.config/nvim/plug-config/barbar.vim
" source $HOME/.config/nvim/plug-config/codi.vim
" source $HOME/.config/nvim/plug-config/vista.vim

" abandon
" source $HOME/.config/nvim/plug-config/airline.vim
" source $HOME/.config/nvim/plug-config/dashboard.vim


" key mappings
inoremap  <C-j> <C-n>
inoremap  <C-k> <C-p>

