"[[line number]]
set number     "show line number
highlight LineNr ctermfg=241 ctermbg=235 guifg=#555555 guibg=#242424
highlight CursorLineNr ctermfg=248 ctermbg=235 guifg=#808080 guibg=#303030 gui=bold
set cursorline "show cursor line
highlight clear CursorLine

"[[spaces & tabs]]
set autoindent    "uses the indent from the previous line
set smartindent   "do smart autoindenting when starting new line
set copyindent    "copy the previous line structure when starting new line
set tabstop=4     "number of visual spaces per TAB
set softtabstop=2 "number of spaces in tab when editing
set shiftwidth=2  "number of spaces to use for autoindent
set noexpandtab   "not to expand TAB to spaces

"[[clipboard]]
set clipboard=unnamed,unnamedplus

"[[reset hightlight]]
nnoremap <esc> :noh<return><esc>

"[[encoding]]
set encoding=utf-8
set fileencoding=utf-8

"[[syntax]]
syntax enable
