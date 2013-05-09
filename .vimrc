"small initial window for netbook:
set lines=28 columns=100
"remove toolbar to save screen space:
set guioptions-=T
"line numbers added:
set number
"encoding always UTF-8, important for web development:
set encoding=utf-8
"use Monokai theme, find it at github.com/sickill/vim-monokai,
"if no GUI mode then use default:
if has('gui_running') 
    colorscheme Monokai
else
    colorscheme default
endif
"use Windows clipboard with no need to use the * or + registers
"set clipboard=unnamed
"use X11 clipboard on Linux with no need to use the + register
set clipboard=unnamedplus
