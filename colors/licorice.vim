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

" Old colors
let s:old = {
      \ 'green':  '#a3d749',
      \ 'orange': '#eeae4f',
      \ 'white':  '#ffffff',
\ }

" 🎨 New palette!
let s:p = {
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
function! s:highlight(group, fg, ...)
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

" Skipping:
" Cursor already good
" ICursor ??
" ColorColumn (set cursorcolumn=+1, set textwidth=60)
" WildMenu not used? (if found link to Pmenu?)
" IncSearch - looks pretty good without it
" TabLineSel - just fg
" TabWinNumSel - just fg
" TabNumSel - just fg
"
" hi Cursor                      guibg=#cccccc                     ctermbg=7
" hi ICursor                     guibg=#cccccc                     ctermbg=7
" hi ColorColumn                 guibg=#191f21                     ctermbg=0
" hi WildMenu      guifg=#cccccc guibg=#191f21          ctermfg=7  ctermbg=0
" hi IncSearch     guifg=#fcaf3e guibg=#444444          ctermfg=3  ctermbg=8
" hi TabLineSel    guifg=#cccccc guibg=#1e2426 gui=none ctermfg=7  ctermbg=none  cterm=none
" hi TabWinNumSel  guifg=#cccccc guibg=#1e2426 gui=none ctermfg=7  ctermbg=none  cterm=none
" hi TabNumSel     guifg=#cccccc guibg=#1e2426 gui=none ctermfg=7  ctermbg=none  cterm=none

" Basics
call s:highlight('Normal', s:p.fg, s:p.bg)
call s:highlight('NonText', s:p.gray2)
call s:highlight('Visual', 'none', s:p.gray4)
call s:highlight('LineNr', s:p.gray3)
call s:highlight('CursorLine', 'none', s:p.black)
call s:highlight('CursorLineNr', s:p.fg)
call s:highlight('Search', s:p.yellow, s:p.gray4)
" call s:highlight('IncSearch', s:p.bg, s:old.orange)
call s:highlight('MatchParen', s:p.bg, s:p.gray3)
call s:highlight('Folded', s:p.gray4)
call s:highlight('SpecialKey', s:p.gray2)
call s:highlight('Directory', s:p.blue)
call s:highlight('SignColumn', 'none', s:p.bg)

" UI labels
call s:highlight('Title', s:p.yellow)
call s:highlight('MoreMsg', s:p.green1)
call s:highlight('ErrorMsg', s:p.red)
call s:highlight('WarningMsg', s:p.yellow)
call s:highlight('Question', s:p.green1)

" Menus
call s:highlight('Pmenu', s:p.fg, s:p.gray6)
call s:highlight('PmenuSel', 'none', s:p.gray3)
call s:highlight('PmenuSbar', 'none', s:p.gray4)
call s:highlight('PmenuThumb', 'none', s:p.fg)

" Windows
call s:highlight('StatusLine', s:p.fg, s:p.gray4)
call s:highlight('StatusLineNC', s:p.fg, s:p.gray4)
call s:highlight('VertSplit', s:p.gray4, s:p.gray4)

" Tabs
call s:highlight('TabLine', s:p.gray1, s:p.gray4)
hi! link TabWinNum TabLine
hi! link TabNum TabLine
call s:highlight('TabLineFill', 'none', s:p.gray4)

" Diff
call s:highlight('DiffAdd', s:p.bg, s:p.green1)
call s:highlight('DiffChange', 'none', s:p.gray6)
call s:highlight('DiffDelete', s:p.red, s:p.red)
call s:highlight('DiffText', 'none', s:p.gray2)

" Spell
call s:highlight('SpellBad', 'none', 'none', 'underline', s:p.red)
call s:highlight('SpellCap', 'none', 'none', 'underline', s:p.red)
call s:highlight('SpellRare', 'none', 'none', 'underline', s:p.yellow)

" Syntax
call s:highlight('Comment', s:p.gray2)

call s:highlight('Constant', s:old.green)
call s:highlight('Number', s:old.green)
" call s:highlight('Constant', s:p.green2)
" call s:highlight('Number', s:p.green2)

call s:highlight('Statement', s:p.blue)
call s:highlight('Identifier', s:p.blue)
call s:highlight('Type', s:p.blue)

call s:highlight('PreProc', s:old.orange)
call s:highlight('Function', s:old.orange)
call s:highlight('Todo', s:old.orange)
" call s:highlight('PreProc', s:p.yellow)
" call s:highlight('Function', s:p.yellow)
" call s:highlight('Todo', s:p.yellow)

" call s:highlight('Keyword', s:old.white)
" call s:highlight('Special', s:old.white)
" call s:highlight('Error', s:old.white)
call s:highlight('Keyword', s:p.fg)
call s:highlight('Special', s:p.fg)
call s:highlight('Error', s:p.fg)


call s:highlight('htmlTag', s:p.gray1)
hi! link htmlEndTag htmlTag
call s:highlight('htmlTagName', s:p.fg)
call s:highlight('Underlined', 'none', 'none', 'underline')
hi! link cssBraces htmlTag

call s:highlight('NvimTreeVertSplit', s:p.bg, s:p.bg)
call s:highlight('NvimTreeNormal', s:p.fg, s:p.black)
call s:highlight('NvimTreeEndOfBuffer', s:p.black, s:p.black)
call s:highlight('NvimTreeCursorLine', 'none', s:p.bg)
call s:highlight('NvimTreeExecFile', s:p.green1, 'none')
hi! link NvimTreeRootFolder Directory
hi! link NvimTreeSpecialFile NvimTreeNormal
