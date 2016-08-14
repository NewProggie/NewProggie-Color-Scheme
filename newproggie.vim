" -----------------------------------------------------------------------------
" Vim color file
" Maintainer:   Kai Wolf <mail@kai-wolf.me>
" Last Change:  2016 August
" License:      Beer Ware
" -----------------------------------------------------------------------------

" Reset Highlighting
hi clear
if exists("syntax_on")
  syntax reset
endif

" General settings
set background=dark
let g:colors_name="newproggie"

" Editor settings
hi Normal        cterm=none      ctermbg=0  ctermfg=7  gui=none  guibg=#1D2021  guifg=#B0B0B0
hi CursorLine    cterm=bold      ctermbg=0  ctermfg=15 gui=bold  guibg=#1D2021  guifg=#F7F7F7
hi Cursor        cterm=none      ctermbg=1  ctermfg=0  gui=none  guibg=#A94744  guifg=#1D2021
hi LineNr        cterm=none      ctermbg=0  ctermfg=7  gui=none  guibg=#1D2021  guifg=#B0B0B0
hi CursorLineNR  cterm=none      ctermbg=1  ctermfg=0  gui=none  guibg=#A94744

" Number column
hi CursorColumn  cterm=none      ctermbg=1  ctermfg=0  gui=none  guibg=#A94744
hi FoldColumn    cterm=none      ctermbg=0  ctermfg=2  gui=none  guibg=#1D2021  guifg=#6A9C6C
hi Folded        cterm=none      ctermbg=0  ctermfg=2  gui=none  guibg=#1D2021  guifg=#6A9C6C

" Window / Tab delimiters

" File navigation / Searching
hi Directory     cterm=none      ctermbg=0  ctermfg=4  gui=none  guibg=#1D2021  guifg=#569CD6
hi Search        cterm=none      ctermbg=6  ctermfg=15 gui=none  guibg=#218693  guifg=#F7F7F7
hi IncSearch     cterm=none      ctermbg=3  ctermfg=8  gui=none  guibg=#D69831  guifg=#3C3F41

" Prompt / Status
hi StatusLine    cterm=none      ctermbg=8  ctermfg=15 gui=none  guibg=#3C3F41  guifg=#F7F7F7
hi StatusLineNC  cterm=none      ctermbg=15 ctermfg=8  gui=none  guibg=#3C3F41  guifg=#F7F7F7
hi Title         cterm=none      ctermbg=0  ctermfg=4  gui=none                 guifg=#569CD6
hi ModeMsg       cterm=bold      ctermbg=0  ctermfg=10 gui=bold

" Visual aid
hi MatchParen    cterm=bold      ctermbg=0  ctermfg=15 gui=none  guibg=#1D2021  guifg=#F7F7F7
hi Visual        cterm=none      ctermbg=8  ctermfg=15 gui=none  guibg=#3C3F41  guifg=#F7F7F7
hi NonText       cterm=bold      ctermbg=0  ctermfg=8  gui=bold                 guifg=#B0B0B0
hi Error         cterm=none      ctermbg=1  ctermfg=7  gui=none                 guifg=#A94744
hi ErrorMsg      cterm=none      ctermbg=1  ctermfg=7  gui=none                 guifg=#A94744

" Completion menu
hi Pmenu         cterm=none      ctermbg=8  ctermfg=7  gui=none  guibg=#3C3F41  guifg=#B0B0B0
hi PmenuSel      cterm=none      ctermbg=4  ctermfg=15 gui=none  guibg=#569CD6  guifg=#F7F7F7
hi PmenuSbar     cterm=none      ctermbg=4  ctermfg=15 gui=none  guibg=#569CD6  guifg=#F7F7F7

" Spelling
hi SpellBad      cterm=underline ctermbg=0  ctermfg=9  gui=none                 guifg=#E09690
hi SpellCap      cterm=underline ctermbg=0  ctermfg=9  gui=none                 guifg=#E09690
hi SpellRare     cterm=underline ctermbg=0  ctermfg=9  gui=none                 guifg=#E09690
hi SpellLocal    cterm=underline ctermbg=0  ctermfg=9  gui=none                 guifg=#E09690

" Diff
hi DiffAdd       cterm=bold      ctermbg=2  ctermfg=15
hi DiffChange    cterm=bold      ctermbg=4  ctermfg=15
hi DiffDelete    cterm=bold      ctermbg=1  ctermfg=15
hi DiffText      cterm=bold      ctermbg=3  ctermfg=8

" General language constructs
hi Statement     cterm=none      ctermbg=0  ctermfg=4  gui=none  guibg=#1D2021  guifg=#569CD6
hi Keyword       cterm=none      ctermbg=0  ctermfg=4  gui=none  guibg=#1D2021  guifg=#569CD6
hi Comment       cterm=none      ctermbg=0  ctermfg=2  gui=none  guibg=#1D2021  guifg=#6A9C6C
hi Special       cterm=none      ctermbg=0  ctermfg=4  gui=none  guibg=#1D2021  guifg=#569CD6
hi Delimiter     cterm=none      ctermbg=0  ctermfg=4  gui=none  guibg=#1D2021  guifg=#569CD6

" C syntax highlighting
hi PreProc       cterm=none     ctermbg=0  ctermfg=5   gui=none  guibg=#1D2021  guifg=#B06386
hi Include       cterm=none     ctermbg=0  ctermfg=5   gui=none  guibg=#1D2021  guifg=#B06386
hi Define        cterm=none     ctermbg=0  ctermfg=5   gui=none  guibg=#1D2021  guifg=#B06386
hi Macro         cterm=none     ctermbg=0  ctermfg=5   gui=none  guibg=#1D2021  guifg=#B06386
hi PreCondit     cterm=none     ctermbg=0  ctermfg=5   gui=none  guibg=#1D2021  guifg=#B06386
hi Type          cterm=none     ctermbg=0  ctermfg=4   gui=none  guibg=#1D2021  guifg=#569CD6
hi String        cterm=none     ctermbg=0  ctermfg=3   gui=none  guibg=#1D2021  guifg=#D69831
hi Method        cterm=none     ctermbg=0  ctermfg=11  gui=none  guibg=#1D2021  guifg=#F8BC41
hi Function      cterm=none     ctermbg=0  ctermfg=11  gui=none  guibg=#1D2021  guifg=#F8BC41
hi Symbol        cterm=none     ctermbg=0  ctermfg=4   gui=none  guibg=#1D2021  guifg=#569CD6
hi Structure     cterm=none     ctermbg=0  ctermfg=4   gui=none  guibg=#1D2021  guifg=#569CD6
hi StorageClass  cterm=none     ctermbg=0  ctermfg=4   gui=none  guibg=#1D2021  guifg=#569CD6
hi Typedef       cterm=none     ctermbg=0  ctermfg=4   gui=none  guibg=#1D2021  guifg=#569CD6
hi Identifier    cterm=none     ctermbg=0  ctermfg=4   gui=none  guibg=#1D2021  guifg=#569CD6
hi Constant      cterm=none     ctermbg=0  ctermfg=4   gui=none  guibg=#1D2021  guifg=#569CD6
hi Number        cterm=none     ctermbg=0  ctermfg=2   gui=none  guibg=#1D2021  guifg=#6A9C6C

