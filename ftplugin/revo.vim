if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo&vim

" ------------------------------------------------------------------
" Comments (Revo uses # line comments)
" ------------------------------------------------------------------
setlocal comments=:#
setlocal commentstring=#\ %s

" ------------------------------------------------------------------
" Formatting
" ------------------------------------------------------------------
setlocal formatoptions-=t
setlocal formatoptions+=croql

" ------------------------------------------------------------------
" File patterns
" ------------------------------------------------------------------
setlocal suffixesadd=.rv

" ------------------------------------------------------------------
" Indentation
" ------------------------------------------------------------------
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal expandtab

" Optional fallback indentation
setlocal smartindent

" ------------------------------------------------------------------
" Undo support
" ------------------------------------------------------------------
let b:undo_ftplugin =
      \ "setlocal comments< commentstring< formatoptions< " .
      \ "suffixesadd< tabstop< shiftwidth< softtabstop< expandtab< smartindent<"

let &cpo = s:cpo_save
unlet s:cpo_save

" vim: nowrap sw=2 sts=2 ts=2 et
