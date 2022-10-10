" Name: Licorice
" Author: Rasmus Spiegelberg
" Created: Nov, 2012
" License: MIT 
"

" Iterm licorice (used currently in licorice.vim):

" # Black
" 00 #1a1e20
" 08 #434443
       
" # Red
" 01 #d74534
" 09 #df7a73
       
" # Green
" 02 #a3d749
" 10 #c0e380
       
" # Yellow
" 03 #eeae4f
" 11 #f3c888

" # Blue
" 04 #4996cd
" 12 #7da1cc
       
" # Magenta
" 05 #656663
" 13 #888985
       
" # Cyan
" 06 #2e4a55
" 14 #414a4c

" # White
" 07 #cbcccb
" 15 #fefefe


" 🎨 New palette!
let p = {
      \ 'fg':      '#cbcccb',
      \ 'bg':      '#1f2325',
      \ 'yellow':  '#f3c888',
      \ 'cyan':    '#7fbbb3',
      \ 'green1':  '#c0e380',
      \ 'green2':  '#83c092',
      \ 'green3':  '#a7c07f',
      \ 'blue':    '#7da1cc',
      \ 'magenta': '#d699b6',
      \ 'red':     '#e67e80',
      \ 'gray1':   '#888985',
      \ 'gray2':   '#656663',
      \ 'gray3':   '#414a4c',
      \ 'gray4':   '#434443',
      \ 'gray5':   '#2e4a55',
      \ 'gray6':   '#2e3436',
      \ 'black':   '#1a1e20',
\ }




" https://github.com/sainnhe/everforest/blob/b3b42b59b295aa7462843e305639bb134721c9a1/autoload/everforest.vim
" https://github.com/sainnhe/everforest/blob/master/colors/everforest.vim
function! licorice#highlight(group, fg, ...)
  execute 'hi' a:group
        \ 'guifg=' . a:fg
        \ 'guibg=' . (a:0 >= 1 ? a:1 : 'none')
        \ 'gui=' . (a:0 >= 2 ? a:2 : 'none')
        \ 'guisp=' . (a:0 >= 3 ? a:3 : 'none')
endfunction

set background=dark

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "licorice"

" Skipping
" Cursor already good
" ICursor ??
" ColorColumn (set cursorcolumn=+1, set textwidth=60)
" WildMenu not used? (if found link to Pmenu?)
" SignColumn, same as background?
" IncSearch ??
" TabLineSel - just fg
" TabWinNumSel - just fg
" TabNumSel - just fg
" Directory - netrw?

" Basics
call licorice#highlight('Normal', p.fg, p.bg)
call licorice#highlight('NonText', p.gray2)
call licorice#highlight('Visual', 'none', p.gray4)
call licorice#highlight('LineNr', p.gray2)
call licorice#highlight('CursorLine', 'none', p.black)
call licorice#highlight('CursorLineNr', p.fg)
call licorice#highlight('Search', p.yellow, p.gray4)
call licorice#highlight('MatchParen', p.bg, p.yellow)
call licorice#highlight('Folded', p.gray4)
call licorice#highlight('SpecialKey', p.gray2)

" UI labels
call licorice#highlight('Title', p.yellow)
call licorice#highlight('MoreMsg', p.green1)
call licorice#highlight('Question', p.green1)

" Menus
call licorice#highlight('Pmenu', p.fg, p.gray6)
" call licorice#highlight('PmenuSel', p.bg, p.gray1)
call licorice#highlight('PmenuSel', p.bg, p.green3)
call licorice#highlight('PmenuSbar', 'none', p.gray4)
call licorice#highlight('PmenuThumb', p.fg)

" Windows
call licorice#highlight('StatusLine', p.fg, p.gray4)
call licorice#highlight('StatusLineNC', p.fg, p.gray4)
call licorice#highlight('VertSplit', p.gray4, p.gray4)

" Tabs
call licorice#highlight('TabLine', p.gray1, p.gray4)
hi link TabWinNum TabLine
hi link TabNum TabLine
call licorice#highlight('TabLineFill', 'none', p.gray4)


" " Basic
" hi Normal        guifg=#cccccc guibg=#1e2426          ctermfg=7  ctermbg=none
" hi NonText       guifg=#3f4b4d guibg=#1e2426 gui=none ctermfg=14 ctermbg=none
" hi Cursor                      guibg=#cccccc                     ctermbg=7
" hi ICursor                     guibg=#cccccc                     ctermbg=7
" hi CursorLine                  guibg=#191f21                     ctermbg=0     cterm=none
" hi ColorColumn                 guibg=#191f21                     ctermbg=0
" hi Visual                      guibg=#444444                     ctermbg=8
" hi LineNr        guifg=#414a4c guibg=#1e2426          ctermfg=14 ctermbg=none
" hi MoreMsg       guifg=#729fcf                        ctermfg=10
" hi Question      guifg=#8ae234               gui=none ctermfg=10
" hi WildMenu      guifg=#cccccc guibg=#191f21          ctermfg=7  ctermbg=0
" hi SignColumn                  guibg=#1e2426                     ctermbg=none

" " Search
" hi IncSearch     guifg=#fcaf3e guibg=#444444          ctermfg=3  ctermbg=8
" hi Search        guifg=#fcaf3e guibg=#444444          ctermfg=3  ctermbg=8

" " Window Elements
" hi StatusLine    guifg=#cccccc guibg=#444444 gui=none ctermfg=7  ctermbg=8     cterm=none
" hi StatusLineNC  guifg=#888a85 guibg=#444444 gui=none ctermfg=13 ctermbg=8     cterm=none
" hi VertSplit     guifg=#444444 guibg=#444444 gui=none ctermfg=8  ctermbg=8     cterm=none

" " Pmenu
" hi Pmenu         guifg=#cccccc guibg=#2e3436          ctermfg=7  ctermbg=6
" hi PmenuSel      guifg=#1e2426 guibg=#ffffff          ctermfg=0  ctermbg=15
" hi PmenuSbar                   guibg=#444444                     ctermbg=8
" hi PmenuThumb    guifg=#ffffff                        ctermfg=15

" " Folds
" hi Folded        guifg=#cccccc guibg=#2e3436          ctermfg=7  ctermbg=6

" " Specials
" hi Title         guifg=#fcaf3e                        ctermfg=3
" hi SpecialKey    guifg=#3f4b4d                        ctermfg=14

" " Tabs
" hi TabLine       guifg=#888a85 guibg=#444444 gui=none ctermfg=13 ctermbg=8     cterm=none
" hi TabLineFill   guifg=#444444                        ctermfg=8
" hi TabLineSel    guifg=#cccccc guibg=#1e2426 gui=none ctermfg=7  ctermbg=none  cterm=none
" hi TabWinNumSel  guifg=#cccccc guibg=#1e2426 gui=none ctermfg=7  ctermbg=none  cterm=none
" hi TabNumSel     guifg=#cccccc guibg=#1e2426 gui=none ctermfg=7  ctermbg=none  cterm=none
" hi TabWinNum     guifg=#888a85 guibg=#444444 gui=none ctermfg=13 ctermbg=8     cterm=none
" hi TabNum        guifg=#888a85 guibg=#444444 gui=none ctermfg=13 ctermbg=8     cterm=none

" " Matches
" hi MatchParen    guifg=#1e2426 guibg=#fcaf3e          ctermfg=0  ctermbg=3

" " Tree
" hi Directory     guifg=#ffffff                        ctermfg=15

" " Diff
" hi DiffDelete    guifg=#cccccc guibg=#f47070 gui=none ctermfg=7  ctermbg=9     cterm=none
" hi DiffAdd       guifg=#1e2426 guibg=#b1ec78 gui=none ctermfg=0  ctermbg=10    cterm=none
" hi DiffChange                  guibg=#2e3436 gui=none            ctermbg=6     cterm=none
" hi DiffText                    guibg=#2e3436 gui=none            ctermbg=6     cterm=none

" " Spell
" hi SpellBad                                           ctermfg=1  ctermbg=none  cterm=underline
" hi SpellCap                                           ctermfg=11 ctermbg=none  cterm=underline
" hi SpellRare                                          ctermfg=11 ctermbg=none  cterm=underline

" " Syntax
" hi Comment       guifg=#656763                        ctermfg=5
" hi Constant      guifg=#8ae234                        ctermfg=2
" hi Number        guifg=#8ae234                        ctermfg=2
" hi Statement     guifg=#729fcf               gui=none ctermfg=12               cterm=none 
" hi Identifier    guifg=#729fcf                        ctermfg=12
" hi Type          guifg=#729fcf               gui=none ctermfg=12               cterm=none
" hi PreProc       guifg=#fcaf3e                        ctermfg=3
" hi Function      guifg=#fcaf3e                        ctermfg=3
" hi Todo          guifg=#fcaf3e guibg=bg               ctermfg=3  ctermbg=none
" hi Keyword       guifg=#ffffff                        ctermfg=15
" hi Special       guifg=#ffffff                        ctermfg=15
" hi Error         guifg=#ffffff guibg=#ef2929          ctermfg=15 ctermbg=1

" " --------------------------------------------------------------------------------------------

" " HTML
" hi htmlTag       guifg=#888a85                        ctermfg=13
" hi htmlTagName   guifg=#cccccc                        ctermfg=7
" hi link htmlEndTag htmlTag
" hi link htmlSpecialTagName htmlTagName

" " JavaScript
" hi link javaScriptBraces htmlTag

" " CSS
" hi link cssBraces htmlTag

" " Vimwiki
" hi link VimwikiPre htmlTag