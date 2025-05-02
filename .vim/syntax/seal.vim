syntax keyword sealKeyword if then when else while skip stop define return and or not for include as do to by in extern typeof
syntax keyword sealType var const struct
syntax keyword sealBoolean true false null

"syntax match sealNumber  /\v(\d+\.\d+|\d+|\.\d+|0x[0-9A-Fa-f]+)/ 
syntax match sealNumber "\<\d*"
syntax match sealNumber "\<\d*\.d*"

" Match double-quoted strings, allowing escape sequences
syntax match sealString /"\([^"\\]\|\\.\)*"/

" Match single-quoted strings, allowing escape sequences
syntax match sealString /'\([^'\\]\|\\.\)*'/

" Highlight escape sequences within strings (like \n, \t, \", \\)
syntax match sealEscape /\\./ containedin=sealString

" Define colors for highlighting (adjust as needed)
highlight link sealString String
highlight link sealEscape Special

syntax match sealComment "//.*"
syntax region sealComment start="/\*" end="\*/" contains=sealComment
set formatoptions+=cro


highlight def link sealKeyword Keyword
highlight def link sealType Type
highlight def link sealBoolean Boolean
highlight def link sealNumber Number
highlight def link sealString String
highlight def link sealComment Comment

setlocal autoindent
setlocal softtabstop=4
