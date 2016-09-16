let g:airline#themes#newproggie#palette = {}

" Background/foreground for branch and file format blocks
let s:cterm_termbg    = 237
let s:gui_termbg      = '#5F5F5F'
let s:cterm_termfg    = 7
let s:gui_termfg      = '#B0B0B0'

" Background/foreground for middle block
let s:cterm_termbg2   = 234
let s:gui_termbg2     = '#161616'
let s:cterm_termfg2   = 39
let s:gui_termfg2     = '#F5F5F5'

" Background/foreground for normal mode and file position blocks
let s:cterm_normalbg  = 4
let s:gui_normalbg    = '#569CD6'
let s:cterm_normalfg  = 15
let s:gui_normalfg    = '#F7F7F7'

" Background/foreground for insert mode and file position blocks
let s:cterm_insertbg  = 2
let s:gui_insertbg    = '#608B4E'
let s:cterm_insertfg  = 15
let s:gui_insertfg    = '#F7F7F7'

" Background/foreground for visual mode and file position blocks
let s:cterm_visualbg  = 3
let s:gui_visualbg    = '#D69831'
let s:cterm_visualfg  = 15
let s:gui_visualfg    = '#F7F7F7'

" Background/foreground for replace mode and file position blocks
let s:cterm_replacebg = 1
let s:gui_replacebg   = '#A94744'
let s:cterm_replacefg = 15
let s:gui_replacefg   = '#F7F7F7'

" Modified file alert color
let s:cterm_alert     = 9
let s:gui_alert       = '#E09690'

" Background/foreground for inactive mode
let s:cterm_inactivebg = 0
let s:gui_inactivebg   = '#161616'
let s:cterm_inactivefg = 8
let s:gui_inactivefg   = '#3C3C3C'

" Branch and file format
let s:BB = [s:gui_termfg, s:gui_termbg, s:cterm_termfg, s:cterm_termbg]

" Outside blocks in normal mode
let s:N1 = [s:gui_normalfg, s:gui_normalbg, s:cterm_normalfg, s:cterm_normalbg]
" Middle block
let s:N2 = [s:gui_termfg2, s:gui_termbg2, s:cterm_normalbg, s:cterm_termbg2]
let g:airline#themes#newproggie#palette.normal = airline#themes#generate_color_map(s:N1, s:BB, s:N2)
let g:airline#themes#newproggie#palette.normal_modified = {'airline_c': [s:gui_alert, s:gui_termbg2, s:cterm_alert, s:cterm_termbg2, 'bold'] ,}

" Insert mode
let s:I1 = [s:gui_insertfg, s:gui_insertbg, s:cterm_insertfg, s:cterm_insertbg] " Outside blocks in insert mode
let s:I2 = [s:gui_insertbg, s:gui_termbg2, s:cterm_insertbg, s:cterm_termbg2]   " Middle block
let g:airline#themes#newproggie#palette.insert = airline#themes#generate_color_map(s:I1, s:BB, s:I2)
let g:airline#themes#newproggie#palette.insert_modified = {'airline_c': [s:gui_alert, s:gui_termbg2, s:cterm_alert, s:cterm_termbg2, 'bold'] ,}

" Replace mode
let s:R1 = [s:gui_replacefg, s:gui_replacebg, s:cterm_replacefg, s:cterm_replacebg]  " Outside blocks in replace mode
let s:R2 = [s:gui_termfg, s:gui_termbg2, s:cterm_termfg, s:cterm_termbg2]            " Middle block
let g:airline#themes#newproggie#palette.replace = airline#themes#generate_color_map(s:R1, s:BB, s:R2)
let g:airline#themes#newproggie#palette.replace_modified = {'airline_c': [s:gui_alert, s:gui_termbg2, s:cterm_alert, s:cterm_termbg2, 'bold'] ,}

" Visual mode
let s:V1 = [s:gui_visualfg, s:gui_visualbg, s:cterm_visualfg, s:cterm_visualbg] " Outside blocks in visual mode
let s:V2 = [s:gui_visualbg, s:gui_termbg2, s:cterm_visualbg, s:cterm_termbg2]   " Middle block
let g:airline#themes#newproggie#palette.visual = airline#themes#generate_color_map(s:V1, s:BB, s:V2)
let g:airline#themes#newproggie#palette.visual_modified = {'airline_c': [s:gui_alert, s:gui_termbg2, s:cterm_alert, s:cterm_termbg2, 'bold'] ,}

" Inactive mode
let s:IA1 = [s:gui_inactivefg, s:gui_inactivebg, s:cterm_inactivefg, s:cterm_inactivebg, '']
let s:IA2 = [s:gui_inactivefg, s:gui_inactivebg, s:cterm_inactivefg, s:cterm_inactivebg, '']
let s:IA3 = [s:gui_inactivefg, s:gui_inactivebg, s:cterm_inactivefg, s:cterm_inactivebg, '']
let g:airline#themes#newproggie#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" CtrlP plugin colors
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#newproggie#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [s:gui_normalfg, s:gui_normalbg, s:cterm_normalfg, s:cterm_normalbg, ''],
      \ [s:gui_termfg, s:gui_termbg, s:cterm_termfg, s:cterm_termbg, ''],
      \ [s:gui_termfg2, s:gui_termbg2, s:cterm_termfg2, s:cterm_termbg2, 'bold'])
