" Tack Syntax Highlighting

syntax match tackIdentifier "[a-zA-Z_][a-zA-Z_0-9]*"
hi def link tackIdentifier Identifier

" Highlight instructions
syntax keyword tackInstruction not neg dup drop swap rot over
hi def link tackInstruction Statement

" Highlight types
syntax keyword tackType int bool uint ptr
hi def link tackType Type

" Highlight keywords
syntax keyword tackKeyword func const do end extern include
hi def link tackKeyword Keyword

" Match strings
syntax match tackString '".*"'
hi def link tackString String

" Define numbers
syntax match tackNumber "\<\d\+\>"
hi def link tackNumber Number

" Highlight operators and punctuation
syntax match tackOperator "->"
hi def link tackOperator Delimiter

" Enable the syntax highlighting
setlocal syntax=tack

