" .gvimrc
" Maintainer:   Ryan Eno <vim_commando@icloud.com>
" Last Change:  12 January 2014
"
" Just set the font, gui options and mouse behavior

if has("win32")
    set guifont=Terminus:h12:cANSI
elseif has ("unix")
    set guifont=terminus\ 12
endif

set guioptions=c
set mousemodel=popup
