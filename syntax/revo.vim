" revo.vim
" Vim syntax file for Revo (.rv)

if exists("b:current_syntax")
  finish
endif

syn region RevoComment start="#" end="$"
"syn match revoComment /#.*/ 

syn keyword revoKeyword let const global fn match when spawn
syn keyword revoConditional orelse
syn keyword revoBoolean true false

syn keyword revoBuiltin print inspect assert_eq tonumber join

syn match revoPlaceholder /_/

syn match revoAtom /:\w\+/

syn match revoNumber /\v\d+(\.\d+)?/

syn region revoString start=/"/ skip=/\\./ end=/"/

syn match revoOperator /|>/
syn match revoOperator /=>/
syn match revoOperator /+=/
syn match revoOperator /[-+*\/=<>!]/
syn match revoOperator /?/

syn match revoFunctionDef /\<fn\>\s\+\zs\k\+/ containedin=ALL

syn match revoMethodDef /\<fn\>\s\+\zs\k\+:\k\+/ containedin=ALL

syn match revoFunctionCall /\<\k\+\ze(/

syn match revoTableKey /\<\k\+\>\s*=\s*/ contains=revoOperator

syn match revoMatchBranch /^\s*|\s*/

syn match revoDelimiter /[{}()\[\],]/

highlight def link RevoComment Comment
highlight def link revoKeyword Keyword
highlight def link revoConditional Conditional
highlight def link revoBoolean Boolean
highlight def link revoBuiltin Function
highlight def link revoPlaceholder Identifier
highlight def link revoAtom Constant
highlight def link revoNumber Number
highlight def link revoString String
highlight def link revoOperator Operator
highlight def link revoFunctionDef Function
highlight def link revoMethodDef Function
highlight def link revoFunctionCall Function
highlight def link revoTableKey Identifier
highlight def link revoMatchBranch Conditional
highlight def link revoDelimiter Delimiter
