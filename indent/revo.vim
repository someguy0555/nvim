"if exists("b:did_indent")
"  finish
"endif
"let b:did_indent = 1
"
"setlocal indentexpr=GetRevoIndent()
"setlocal autoindent
"
"let b:undo_indent = "setlocal autoindent< indentexpr<"
"
"if exists("*GetRevoIndent")
"  finish
"endif
"
"function! GetRevoIndent()
"  " Previous non-blank line
"  let prevlnum = prevnonblank(v:lnum - 1)
"
"  if prevlnum == 0
"    return 0
"  endif
"
"  let prevline = getline(prevlnum)
"  let ind = indent(prevlnum)
"
"  " Increase indent after block starters
"  " Revo constructs: fn, match, when, spawn, let, const, global
"  if prevline =~ '\v\<(fn|match|when|spawn|let|const|global)\>.*$'
"    let ind += shiftwidth()
"  endif
"
"  " Increase indent after lines ending with '{' or '[' or '('
"  if prevline =~ '[{\[(]\s*$'
"    let ind += shiftwidth()
"  endif
"
"  " Decrease indent on closing braces/brackets
"  let line = getline(v:lnum)
"  if line =~ '^\s*[}\])]'
"    let ind -= shiftwidth()
"  endif
"
"  " Prevent negative indent
"  if ind < 0
"    let ind = 0
"  endif
"
"  return ind
"endfunction
