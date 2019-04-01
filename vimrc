set nocompatible
filetype plugin on

colorscheme aesthetic

syntax enable

set showmatch
set nu
set relativenumber
set incsearch
set hlsearch
set tabstop=2
set softtabstop=0
set expandtab
set shiftwidth=2
set smarttab
set clipboard=unnamedplus
set shell=bash

nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
"nnoremap ; :

let mapleader = ","

set wrap linebreak nolist

" set language
function! FrenchWriter()
  set spelllang=fr spell
endfunction

function! NoSpell()
  set nospell
endfunction

nnoremap <leader>fr :call FrenchWriter()
nnoremap <leader>ns :call NoSpell()
nnoremap <leader>hl :nohls

let g:languagetool_jar='/usr/local/share/language_tool/languagetool-commandline.jar'

"function! Smart_TabComplete()
"  let line = getline('.')
"  let substr = strpart(line, -1, col('.')+1)
"  let substr = matchstr(substr, "[^ \t]*$")
"  if (strlen(substr)==0)
"    return "\<tab>"
"  endif
"  let has_period = match(substr, '\.') != -1
"  let has_slash = match(substr, '\/') != -1
"  if (!has_period && !has_slash)
"    return "\<C-X>\<C-P>"
 " elseif ( has_slash )
"  else
"    return "\<C-X>\<C-F>"
"  endif
"endfunction

"inoremap <tab> <c-r>=Smart_TabComplete()<CR>

" Up and Down arrow keys move on display lines
noremap <buffer> <silent> <Up> gk
noremap <buffer> <silent> <Down> gj

" enter hexadecimal mode
command Hx %!xxd

" exit hexadecimal mode
command Hn %!xxd -r

" custom templates
au bufNewFile *.c 0r /home/ed/dot/vim/templates/base.c
au bufNewFile Makefile 0r /home/ed/dot/vim/templates/Makefile
au bufNewFile *.html 0r /home/ed/dot/vim/templates/base.html
au bufNewFile *.go 0r /home/ed/dot/vim/templates/base.go

" Source my shorcuts:
so /home/ed/dot/vim/remaps/symb.vim
  nm <leader>i :call ToggleShortcut()<CR>
  imap <leader>i <esc>:call ToggleShortcut()<CR>a

autocmd BufWritePost ~/dot/crontab.user-space !/usr/local/bin/uscron-restart && ns "uscron re-confed"
autocmd BufWritePost ~/dot/crontab !sudo sv restart scron && ns "crontab re-confed"
" autocmd BufWritePost *.tex !sudo sv restart scron

" remove trailing white space on save
autocmd BufWritePre * :%s/\s\+$//e
