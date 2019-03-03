" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	edbar79 <edbar79@airmail.com>
" Last Change:	3184 Bureaucracy 10

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "aesthetic"
hi Normal      ctermfg=White
hi Comment     ctermfg=DarkCyan
hi Special     ctermfg=DarkRed
hi Identifier  ctermfg=DarkCyan
hi PreProc     ctermfg=DarkCyan
hi Type        ctermfg=DarkGreen
hi Function    ctermfg=DarkCyan
hi Ignore      ctermfg=Black 
hi Error       ctermbg=DarkGreen ctermfg=Black
hi Todo        ctermbg=DarkRed   ctermfg=Black

hi Constant ctermfg=DarkMagenta
hi link String    Constant          
hi link Character Constant
hi link Number    Constant         
hi link Boolean   Constant     
hi link Float     Constant

hi Statement   ctermfg=Yellow
hi link Conditional Statement   
hi link Repeat      Statement   
hi link Label       Statement   
hi link Operator    Statement   
hi link Keyword     Statement   
hi link Exception   Statement   

hi PreProc ctermfg=DarkBlue   
hi link Include   PreProc        
hi link Define    PreProc         
hi link Macro     PreProc
hi link PreCondit PreProc  


"hi StorageClass ctermfg=DarkGreen   
"hi Structure    ctermfg=DarkRed   
"hi Typedef      ctermfg=DarkRed   
"hi Tag          ctermfg=DarkGreen   
"hi SpecialChar    ctermfg=DarkGreen   
"hi Delimiter      ctermfg=DarkRed  
"hi SpecialComment ctermfg=DarkGreen   
"hi Debug          ctermfg=DarkGreen   
