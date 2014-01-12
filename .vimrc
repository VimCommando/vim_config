" Maintainer:   Ryan Eno <vim_commando@icloud.com>
" Last Change:  30 August 2013
"
" Basic options the way I like it and a few usefull hotkeys 

syntax on
colorscheme commando
filetype plugin indent on
set spelllang=en_us 
set history=64

" set tab behaviors
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent


set linebreak
set nocompatible

" don't line-wrap long lines
set textwidth=79
set nowrap

" let backspace overlap multiple lines
set backspace=indent,eol,start

" highlight search results
set hlsearch
set incsearch

" set UI elements
set foldcolumn=1
set showtabline=2
set ruler
set showcmd

" xterm - enable the mouse 
set mouse=a
" xterm - make the yank register available from the x11 clipboard
set clipboard=unnamedplus,autoselect,exclude:cons\\\|linux

"let g:rubycomplete_rails = 1

" Enable the menu
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<C-Z>

" Shortcut Key Mappings
map <Up>    gk
map <Down>  gj
map <F4>    :emenu <C-Z>

" Hex editing mode toggle
nnoremap <F7> :Hexmode<CR>
inoremap <F7> <Esc>:Hexmode<CR>
vnoremap <F7> :<C-U>Hexmode<CR>

nmap <F8>   i<C-X>s
nmap <F9>   :call SpellOn()<CR>
nmap <F10>  :call IC_On()<CR>
nmap <F11>  :call Lg_Fold_Col()<CR>
nmap <F12>  :call LineNr_On()<CR>

" Helper Functions
function! SpellOn()
	nmap <F9> :call SpellOff()<CR>
	setlocal spell
	echo "Spell Check ON"
endfunction

function! SpellOff()
	nmap <F9> :call SpellOn()<CR>
	setlocal nospell
	echo "Spell Check OFF"
endfunction

function! IC_On()
	nmap <F10> :call IC_Off()<CR>
	setlocal ignorecase smartcase
	echo "Ignore Case ON"
endfunction

function! IC_Off()
	nmap <F10> :call IC_On()<CR>
	setlocal noignorecase
	echo "Ignore Case OFF"
endfunction

function! Lg_Fold_Col()
	nmap <F11> :call Sm_Fold_Col()<CR>
	setlocal foldcolumn=5
	echo "Fold Column Size: 5"
endfunction

function! Sm_Fold_Col()
	nmap <F11> :call Lg_Fold_Col()<CR>
	setlocal foldcolumn=1
	echo "Fold Column Size: 1"
endfunction

function! LineNr_On()
	nmap <F12> :call LineNr_Off()<CR>
	setlocal number
	echo "Line Numbers ON"
endfunction

function! LineNr_Off()
	nmap <F12> :call LineNr_On()<CR>
	setlocal nonumber
	echo "Line Numbers OFF"
endfunction

" ex command for toggling hex mode - define mapping if desired
command -bar Hexmode call ToggleHex()

" helper function to toggle hex mode
function ToggleHex()
  " hex mode should be considered a read-only operation
  " save values for modified and read-only for restoration later,
  " and clear the read-only flag for now
  let l:modified=&mod
  let l:oldreadonly=&readonly
  let &readonly=0
  let l:oldmodifiable=&modifiable
  let &modifiable=1
  if !exists("b:editHex") || !b:editHex
    " save old options
    let b:oldft=&ft
    let b:oldbin=&bin
    " set new options
    setlocal binary " make sure it overrides any textwidth, etc.
    let &ft="xxd"
    " set status
    let b:editHex=1
    " switch to hex editor
    %!xxd
  else
    " restore old options
    let &ft=b:oldft
    if !b:oldbin
      setlocal nobinary
    endif
    " set status
    let b:editHex=0
    " return to normal editing
    %!xxd -r
  endif
  " restore values for modified and read only state
  let &mod=l:modified
  let &readonly=l:oldreadonly
  let &modifiable=l:oldmodifiable
endfunction
