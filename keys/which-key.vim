
" __        ___     _      _           _
" \ \      / / |__ (_) ___| |__       | | _____ _   _
"  \ \ /\ / /| '_ \| |/ __| '_ \ _____| |/ / _ \ | | |
"   \ V  V / | | | | | (__| | | |_____|   <  __/ |_| |
"    \_/\_/  |_| |_|_|\___|_| |_|     |_|\_\___|\__, |
"                                               |___/

" Leader Key Maps

let @s = 'veS"'

" Timeout
" let g:which_key_timeout =400

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>



nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" Map localleader to which_key
nnoremap <localleader> :<c-u>WhichKey  ';'<CR>
vnoremap <localleader> :<c-u>WhichKeyVisual  ';'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" By default timeoutlen is 1000 ms
set timeoutlen=500


" Coc Search & refactor
nnoremap <leader>? :CocSearch <C-R>=expand("<cword>")<CR><CR>
let g:which_key_map['?'] = 'search word'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" let g:which_key_position = 'botright'
" let g:which_key_position = 'topleft'
" let g:which_key_vertical = 1


" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
                  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
let g:which_key_map[';'] = [ '<plug>NERDCommenterInvert',                     'Comment' ]
let g:which_key_map['.'] = [ ':e $MYVIMRC',                                   'open init' ]
let g:which_key_map['/'] = [ ':Commands',                                     'commands' ]
let g:which_key_map['v'] = [ '<Plug>(coc-translator-pv)',                     'popup' ]
let g:which_key_map['='] = [ '<C-W>=',                                        'balance windows' ]
let g:which_key_map['e'] = [ ':CocCommand explorer --toggle --sources=file+', 'explorer' ]
let g:which_key_map['h'] = [ '<C-W>s',                                        'split below']
let g:which_key_map['n'] = [ ':let @/ = ""',                                  'no highlight' ]
let g:which_key_map['o'] = [ ':RnvimrToggle',                                 'RnvimrToggle' ]
let g:which_key_map['p'] = [ ':Files',                                        'search files' ]
let g:which_key_map['q'] = [ ':q',                                            'quit' ]
let g:which_key_map['Q'] = [ '<Plug>(coc-fix-current)',                       'quickfix' ]
let g:which_key_map['u'] = [ ':UndotreeToggle',                               'undo tree']
let g:which_key_map['|'] = [ '<C-W>v',                                        'split right']
let g:which_key_map['T'] = [ ':TSPlaygroundToggle',                           'tree toggle']
let g:which_key_map['0'] = [ 'Goyo',                                          'zen' ]
let g:which_key_map[' '] = [ '<esc>',                                         'ESC' ]



" Group mappings

" 1 is translator
let g:which_key_map.1 = {
                  \ 'name' : '+translator',
                  \ '1' : ['<Plug>(coc-translator-pv)', 'popup'],
                  \ '2' : ['<Plug>(coc-translator-ev)', 'echo'],
                  \ '3' : ['<Plug>(coc-translator-rv)', 'replace'],
                  \ '4' : [':CocList translation',      'translation list'],
                  \}



" " NOTE: do NOT use `nore` mappings
" " popup
" nmap <Leader>t <Plug>(coc-translator-p)
" vmap <Leader>t <Plug>(coc-translator-pv)
" " echo
" nmap <Leader>e <Plug>(coc-translator-e)
" vmap <Leader>e <Plug>(coc-translator-ev)
" " replace
" nmap <Leader>r <Plug>(coc-translator-r)
" vmap <Leader>r <Plug>(coc-translator-rv)


" a is for actions
let g:which_key_map.a = {
                  \ 'name' : '+actions',
                  \ 'c' : [':ColorizerToggle',           'colorizer'],
                  \ 'e' : [':CocCommand explorer',       'explorer'],
                  \ 'h' : [':let @/ = ""',               'remove search highlight'],
                  \ 'l' : [':Bracey',                    'start live server'],
                  \ 'L' : [':BraceyStop',                'stop live server'],
                  \ 't' : [':GenTocGFM',                 'markdown toc'],
                  \ 'm' : [':MarkdownPreview',           'markdown preview'],
                  \ 'M' : [':MarkdownPreviewStop',       'markdown preview stop'],
                  \ 'o' : [':CocCommand markmap.create', 'markmap'],
                  \ 'j' : ['<Plug>(coc-codeaction)',     'Autofix'],
                  \ 's' : [':s/\%V\(.*\)\%V/"\1"/',      'surround'],
                  \ 'r' : [':set norelativenumber!',     'relative line nums'],
                  \ '-' : [':FloatermToggle',            'terminal'],
                  \ 'v' : [':Codi',                      'virtual repl on'],
                  \ 'V' : [':Codi!',                     'virtual repl off'],
                  \ 'w' : [':StripWhitespace',           'strip whitespace'],
                  \ }


" b is for buffer
let g:which_key_map.b = {
                  \ 'name' : '+buffer' ,
                  \ '>' : [':BufferMoveNext'        , 'move next'],
                  \ '<' : [':BufferMovePrevious'    , 'move prev'],
                  \ '1' : [':BufferGoto 1'          , 'buffer 1'],
                  \ '2' : [':BufferGoto 2'          , 'buffer 2'],
                  \ '3' : [':BufferGoto 3'          , 'buffer 3'],
                  \ '4' : [':BufferGoto 4'          , 'buffer 4'],
                  \ '5' : [':BufferGoto 5'          , 'buffer 5'],
                  \ '6' : [':BufferGoto 6'          , 'buffer 6'],
                  \ '7' : [':BufferGoto 7'          , 'buffer 7'],
                  \ '8' : [':BufferGoto 8'          , 'buffer 8'],
                  \ '9' : [':BufferGoto 9'          , 'buffer 9'],
                  \ '0' : [':BufferGoto 0'          , 'buffer 0'],
                  \ '?' : [':BufferPick'            , 'pick buffer'],
                  \ 'd' : [':Bdelete'               , 'delete-buffer'],
                  \ 'D' : [':BufferOrderByDirectory', 'order by directory'],
                  \ 'f' : ['bfirst'                 , 'first-buffer'],
                  \ 'l' : ['blast'                  , 'last buffer'],
                  \ 'L' : [':BufferOrderByLanguage' , 'order by language'],
                  \ 'n' : ['bnext'                  , 'next-buffer'],
                  \ 'p' : ['bprevious'              , 'previous-buffer'],
                  \ 'b' : ['Buffers'                , 'fzf-buffer'],
                  \ }

" nnoremap <silent> <leader>c} V}:call NERDComment('x', 'toggle')<CR>
" nnoremap <silent> <leader>c{ V{:call NERDComment('x', 'toggle')<CR>

" c is for Comment
let g:which_key_map.c = {
                  \ 'name' : '+Comment',
                  \ 'c' : ['<plug>NERDCommenterComment',    'CommenterComment'],
                  \ 'n' : ['<plug>NERDCommenterNested',     'CommenterNested'],
                  \ '<space>':['<plug>NERDCommenterToggle', 'CommenterToggle'],
                  \ 'm':['<plug>NERDCommenterMinimal',      'CommenterMinimal'],
                  \ 'i':['<plug>NERDCommenterInvert',       'CommenterInvert'],
                  \ 's':['<plug>NERDCommenterSexy',         'CommenterSexy'],
                  \ 'y':['<plug>NERDCommenterYank',         'CommenterYank'],
                  \ '$':['<plug>NERDCommenterToEOL',        'CommenterToEOL'],
                  \ 'A':['<plug>NERDCommenterAppend',       'CommenterAppend'],
                  \ 'a':['<plug>NERDCommenterAltDelims',    'CommenterAltDelims'],
                  \ 'l':['<plug>NERDCommenterAlignLeft',    'CommenterAlignLeft'],
                  \ 'b':['<plug>NERDCommenterAlignBoth',    'CommenterAlignBoth'],
                  \ 'u':['<plug>NERDCommenterUncomment',    'CommenterUncomment'],
                  \}

" d is for debug
let g:which_key_map.d = {
                  \ 'name' : '+debug' ,
                  \ 'b' : ['<Plug>VimspectorToggleBreakpoint'              , 'breakpoint'],
                  \ 'B' : ['<Plug>VimspectorToggleConditionalBreakpoint'   , 'conditional breakpoint'],
                  \ 'c' : ['<Plug>VimspectorRunToCursor'                   , 'run to cursor'],
                  \ 'd' : ['<Plug>VimspectorContinue'                      , 'continue'],
                  \ 'f' : ['<Plug>VimspectorAddFunctionBreakpoint'         , 'function breakpoint'],
                  \ 'm' : [':MaximizerToggle'                              , 'maximize window'],
                  \ 'o' : ['<Plug>VimspectorStepOver'                      , 'step over'],
                  \ 'O' : ['<Plug>VimspectorStepOut'                       , 'step out'],
                  \ 'i' : ['<Plug>VimspectorStepInto'                      , 'step into'],
                  \ 'p' : ['<Plug>VimspectorPause'                         , 'pause'],
                  \ 'r' : ['<Plug>VimspectorRestart'                       , 'restart'],
                  \ 's' : ['<Plug>VimspectorStop'                          , 'stop'],
                  \ }

" f is for Telescope
" let g:which_key_map.f = {
" \ 'name' : '+Telescope' ,
" \ 'f' : [':Telescope find_files<cr>'    , 'file'],
" \ 'g' : [':Telescope live_grep<cr>'     , 'grep'],
" \ 'b' : [':Telescope buffers<cr>'     , 'buffers'],
" \ 'h' : [':Telescope help_tags<cr>'     , 'tags'],
" \ }

" z is for find and replace
let g:which_key_map.z = {
                  \ 'name' : '+find & replace' ,
                  \ 'f' : [':Farr --source=vimgrep'    , 'file'],
                  \ 'p' : [':Farr --source=rgnvim'     , 'project'],
                  \ }

" k is for task
let g:which_key_map.k = {
                  \ 'name' : '+task' ,
                  \ 'c' : [':AsyncTask file-compile'      , 'compile file'],
                  \ 'b' : [':AsyncTask project-build'     , 'build project'],
                  \ 'e' : [':AsyncTaskEdit'               , 'edit local tasks'],
                  \ 'f' : [':AsyncTaskFzf'                , 'find task'],
                  \ 'g' : [':AsyncTaskEdit!'              , 'edit global tasks'],
                  \ 'h' : [':AsyncTaskList!'              , 'list hidden tasks'],
                  \ 'l' : [':CocList tasks'               , 'list tasks'],
                  \ 'm' : [':AsyncTaskMacro'              , 'macro help'],
                  \ 'o' : [':copen'                       , 'open task view'],
                  \ 'r' : [':AsyncTask file-run'          , 'run file'],
                  \ 'p' : [':AsyncTask project-run'       , 'run project'],
                  \ 'x' : [':cclose'                      , 'close task view'],
                  \ }
" \ 'l' : [':AsyncTaskList'               , 'list tasks'],

" m is for mark
let g:which_key_map.m = {
                  \ 'name' : '+mark',
                  \ 'c' : [':CocCommand bookmark.clearForCurrentFile', 'clear file'],
                  \ 'C' : [':CocCommand bookmark.clearForAllFiles',    'clear project'],
                  \ 'j' : [':CocCommand bookmark.next',                'next bookmark'],
                  \ 'k' : [':CocCommand bookmark.prev',                'prev bookmark'],
                  \ 't' : [':CocCommand bookmark.toggle',              'toggle bookmark'],
                  \ }
" CoC throws an error
" \ 'a' : [':CocCommand bookmark.annotate', 'annotate bookmark'],


" s is for search
let g:which_key_map.s = {
                  \ 'name' : '+search',
                  \ '/' : [':History/',                              'history'],
                  \ ';' : [':FzfPreviewCommandPalette',              'commands'],
                  \ 'a' : [':Ag',                                    'text Ag'],
                  \ 'b' : [':CocCommand fzf-preview.BufferLines',    'current buffer'],
                  \ 'B' : [':CocCommand fzf-preview.Buffers',        'open buffers'],
                  \ 'c' : [':Commits',                               'commits'],
                  \ 'C' : [':BCommits',                              'buffer commits'],
                  \ 'd' : [':CocCommand fzf-preview.DirectoryFiles', 'directories'],
                  \ 'f' : [':CocCommand fzf-preview.ProjectFiles',   'files'],
                  \ 'g' : [':CocCommand fzf-preview.GitFiles',       'git files'],
                  \ 'G' : [':GFiles?',                               'modified git files'],
                  \ 'h' : [':History',                               'file history'],
                  \ 'H' : [':History:',                              'command history'],
                  \ 'l' : [':Lines',                                 'lines'] ,
                  \ 'm' : [':CocCommand fzf-preview.Marks',          'list marks'],
                  \ 'M' : [':Maps',                                  'normal maps'] ,
                  \ 'p' : [':Helptags',                              'help tags'] ,
                  \ 'P' : [':Tags',                                  'project tags'],
                  \ 'q' : [':CocCommand fzf-preview.QuickFix',       'quickfix list'],
                  \ 's' : [':CocList snippets',                      'snippets'],
                  \ 'S' : [':Colors',                                'color schemes'],
                  \ 't' : [':Rg',                                    'text Rg'],
                  \ 'T' : [':BTags',                                 'buffer tags'],
                  \ 'w' : [':Windows',                               'search windows'],
                  \ 'y' : [':Filetypes',                             'file types'],
                  \ 'z' : [':FZF',                                   'FZF'],
                  \ }
"
" :CocCommand fzf-preview.AllBuffers
" :CocCommand fzf-preview.Changes
" :CocCommand fzf-preview.Yankround
" :CocCommand fzf-preview.CocReferences
" :CocCommand fzf-preview.CocDiagnostics
" :CocCommand fzf-preview.CocCurrentDiagnostics
" :CocCommand fzf-preview.CocTypeDefinitions
" \ 'l' : [':CocCommand fzf-preview.Bookmarks', 'list bookmarks'],
" $FZF_PREVIEW_PREVIEW_BAT_THEME = 'ansi-dark'
"

let g:which_key_map.S = {
                  \ 'name' : '+Session' ,
                  \ 'c' : [':SClose'          , 'Close Session']  ,
                  \ 'd' : [':SDelete'         , 'Delete Session'] ,
                  \ 'l' : [':SLoad'           , 'Load Session']     ,
                  \ 's' : [':Startify'        , 'Start Page']     ,
                  \ 'S' : [':SSave'           , 'Save Session']   ,
                  \ }

" g is for git
let g:which_key_map.g = {
                  \ 'name' : '+git' ,
                  \ 'a' : [':Git add .'                        , 'add all'],
                  \ 'A' : [':CocCommand fzf-preview.GitStatus' , 'actions'],
                  \ 'b' : [':Git blame'                        , 'blame'],
                  \ 'B' : [':GBrowse'                          , 'browse'],
                  \ 'c' : [':Git commit'                       , 'commit'],
                  \ 'd' : [':Git diff'                         , 'diff'],
                  \ 'D' : [':Gdiffsplit'                       , 'diff split'],
                  \ 'g' : [':GGrep'                            , 'git grep'],
                  \ 'G' : [':Gstatus'                          , 'status'],
                  \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
                  \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
                  \ 'i' : [':Gist -b'                          , 'post gist'],
                  \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
                  \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
                  \ 'l' : [':Git log'                          , 'log'],
                  \ 'm' : ['<Plug>(git-messenger)'             , 'message'],
                  \ 'p' : [':Git push'                         , 'push'],
                  \ 'P' : [':Git pull'                         , 'pull'],
                  \ 'r' : [':GRemove'                          , 'remove'],
                  \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
                  \ 'S' : [':CocCommand fzf-preview.GitStatus' , 'status'],
                  \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
                  \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
                  \ 'v' : [':GV'                               , 'view commits'],
                  \ 'V' : [':GV!'                              , 'view buffer commits'],
                  \ }
" \ 'A' : [':Git add %'                        , 'add current'],
" \ 'S' : [':!git status'                      , 'status'],
"
"
"

let g:which_key_map.G = {
                  \ 'name' : '+gist' ,
                  \ 'a' : [':Gist -a'                          , 'post gist anon'],
                  \ 'b' : [':Gist -b'                          , 'post gist browser'],
                  \ 'd' : [':Gist -d'                          , 'delete gist'],
                  \ 'e' : [':Gist -e'                          , 'edit gist'],
                  \ 'l' : [':Gist -l'                          , 'list public gists'],
                  \ 's' : [':Gist -ls'                         , 'list starred gists'],
                  \ 'm' : [':Gist -m'                          , 'post gist all buffers'],
                  \ 'p' : [':Gist -P'                          , 'post public gist '],
                  \ 'P' : [':Gist -p'                          , 'post private gist '],
                  \ }

" l is for language server protocol
let g:which_key_map.l = {
                  \ 'name' : '+lsp' ,
                  \ '.' : [':CocConfig'                          , 'config'],
                  \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
                  \ 'a' : ['<Plug>(coc-codeaction)'              , 'code action'],
                  \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
                  \ 'b' : [':CocNext'                            , 'next action'],
                  \ 'B' : [':CocPrev'                            , 'prev action'],
                  \ 'c' : [':CocList commands'                   , 'commands'],
                  \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
                  \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
                  \ 'e' : [':CocList extensions'                 , 'extensions'],
                  \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
                  \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
                  \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
                  \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
                  \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
                  \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
                  \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
                  \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
                  \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
                  \ 'o' : [':Vista!!'                            , 'outline'],
                  \ 'O' : [':CocList outline'                    , 'search outline'],
                  \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
                  \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
                  \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
                  \ 'r' : ['<Plug>(coc-references)'              , 'references'],
                  \ 'R' : ['<Plug>(coc-rename)'                  , 'rename'],
                  \ 's' : [':CocList -I symbols'                 , 'references'],
                  \ 'S' : [':CocList snippets'                   , 'snippets'],
                  \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
                  \ 'u' : [':CocListResume'                      , 'resume list'],
                  \ 'U' : [':CocUpdate'                          , 'update CoC'],
                  \ 'z' : [':CocDisable'                         , 'disable CoC'],
                  \ 'Z' : [':CocEnable'                          , 'enable CoC'],
                  \ }
" \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],

" t is for terminal
let g:which_key_map.t = {
                  \ 'name' : '+terminal' ,
                  \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
                  \ 'g' : [':FloatermNew lazygit'                           , 'git'],
                  \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
                  \ 'n' : [':FloatermNew node'                              , 'node'],
                  \ 'p' : [':FloatermNew python'                            , 'python'],
                  \ 'm' : [':FloatermNew lazynpm'                           , 'npm'],
                  \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
                  \ 't' : [':FloatermToggle'                                , 'toggle'],
                  \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
                  \ }

" w is for wiki
let g:which_key_map.w = {
                  \ 'name' : '+wiki',
                  \ 'w' : ['<Plug>VimwikiIndex',                'Open default wiki index file.'],
                  \ 'n' : ['<plug>(wiki-open)',                 'wiki-open'],
                  \ 'j' : ['<plug>(wiki-journal)',              'wiki-journal'],
                  \ 'R' : ['<plug>(wiki-reload)',               'wiki-reload'],
                  \ 'c' : ['<plug>(wiki-code-run)',             'wiki-code-run'],
                  \ 'b' : ['<plug>(wiki-graph-find-backlinks)', 'wiki-graph-find-backlinks'],
                  \ 'g' : ['<plug>(wiki-graph-in)',             'wiki-graph-in'],
                  \ 'G' : ['<plug>(wiki-graph-out)',            'wiki-graph-out'],
                  \ 'l' : ['<plug>(wiki-link-toggle)',          'wiki-link-toggle'],
                  \ 'd' : ['<plug>(wiki-page-delete)',          'wiki-page-delete'],
                  \ 'r' : ['<plug>(wiki-page-rename)',          'wiki-page-rename'],
                  \ 't' : ['<plug>(wiki-page-toc)',             'wiki-page-toc'],
                  \ 'T' : ['<plug>(wiki-page-toc-local)',       'wiki-page-toc-local'],
                  \ 'e' : ['<plug>(wiki-export)',               'wiki-export'],
                  \ 'u' : ['<plug>(wiki-list-uniq)',            'wiki-list-uniq'],
                  \ 'U' : ['<plug>(wiki-list-uniq-local)',      'wiki-list-uniq-local'],
                  \ 'h' : [':Vimwiki2HTML',                     'wiki to html'],
                  \ 'V' : [':VimwikiAll2HTML',                  'all wiki to html'],
                  \ 'H' : [':help vimwiki-commands',            'help']
                  \ }

" let g:which_key_map.T = {
                  " \ 'name' : '+tabline' ,
                  " \ 'b' : [':XTabListBuffers'         , 'list buffers'],
                  " \ 'd' : [':XTabCloseBuffer'         , 'close buffer'],
                  " \ 'D' : [':XTabDeleteTab'           , 'close tab'],
                  " \ 'h' : [':XTabHideBuffer'          , 'hide buffer'],
                  " \ 'i' : [':XTabInfo'                , 'info'],
                  " \ 'l' : [':XTabLock'                , 'lock tab'],
                  " \ 'm' : [':XTabMode'                , 'toggle mode'],
                  " \ 'n' : [':tabNext'                 , 'next tab'],
                  " \ 'N' : [':XTabMoveBufferNext'      , 'buffer->'],
                  " \ 't' : [':tabnew'                  , 'new tab'],
                  " \ 'p' : [':tabprevious'             , 'prev tab'],
                  " \ 'P' : [':XTabMoveBufferPrev'      , '<-buffer'],
                  " \ 'x' : [':XTabPinBuffer'           , 'pin buffer'],
                  " \ }
"
" Mappings using CoCList:
" Show all diagnostics.
" TODO add these to which key
" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions.
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" " Show commands.
" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document.
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols.
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list.
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


" Register which key map
call which_key#register('<Space>', "g:which_key_map")
