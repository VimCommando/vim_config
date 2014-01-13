" Vim color file
" Maintainer:   Ryan Eno <vim_commando@icloud.com>
" Last Change:  30 August 2013
" Update Of:    Delek by David Schweikert <dws@ee.ethz.ch>
"
" Notes: As much as I liked the way Delek looked with syntax highlighting, it
" seemed quite lacking when it came to pop-up lists, window splits, tabs and
" other user interface elements. So I fixed it to my liking, and made a couple
" small tweaks that improved readability on LCD screens (less blue text).
"
" I have designed this to be as similar as possible when used in gvim or the
" terminal. When I started this I found myself using vim through ssh a lot, so
" it was is primarily aimed at terminal use. I also disliked bold text invading
" my fixed-width fonts (usually terminus) and prefer brighter colors over
" thicker text.
"
" Ruby Tweaks: I was doing a fair amount of Ruby/Haml development when I
" originally tweaked this. Copy ruby.vim from the vim/syntax directory to your
" ~/.vim/syntax directory. Then change 'rubySymbol' from 'Constant' to
" 'Identifier' -- This will make ruby symbols a different color than strings,
" which makes the code more readable imho.
"
" Haml Tweaks: The default filetype detection often failed if the first
" character in the file was a #, this was very common using haml. To fix it add
" this into ~/.vim/filetype.vim: 'au BufRead,BufNewFile *.haml setfiletype haml'
"
" To check terminal colors run ':runtime syntax/colortest.vim'
"
" Xterm Colors: This colorscheme was optimized for these xterm colors, dump
" these into your ~/.Xresources, run `xrdb -merge ~/.Xresources` and restart
" xterm
"
" xterm*faceName: Terminus:style=Regular:size=12
" xterm*saveLines: 2048
" xterm*termName: xterm-color
" 
" xterm*foreground: rgb:a8/a8/a8
" xterm*background: rgb:00/00/00
" 
" xterm*color0: rgb:00/00/00
" xterm*color1: rgb:a8/00/00
" xterm*color2: rgb:00/a8/00
" xterm*color3: rgb:a8/54/00
" xterm*color4: rgb:00/00/a8
" xterm*color5: rgb:a8/00/a8
" xterm*color6: rgb:00/a8/a8
" xterm*color7: rgb:a8/a8/a8
" xterm*color8: rgb:54/54/54
" xterm*color9: rgb:fc/54/54
" xterm*color10: rgb:54/fc/54
" xterm*color11: rgb:fc/fc/54
" xterm*color12: rgb:54/54/fc
" xterm*color13: rgb:fc/54/fc
" xterm*color14: rgb:54/fc/fc
" xterm*color15: rgb:fc/fc/fc
" 
" xterm*colorBDMode: true
" xterm*colorBD: rgb:fc/fc/fc

set background=dark
highlight clear

let colors_name = "commando"

" Normal should come first
hi Normal   guifg=#A8A8A8   guibg=#000000
hi Cursor   guifg=bg        guibg=fg
hi lCursor  guibg=#00A8A8
hi Italic   cterm=none  ctermfg=LightGray   gui=italic  guifg=#a8a8a8
hi Bold     cterm=bold  ctermfg=White       gui=bold    guifg=#fcfcfc
hi Underlined cterm=underline ctermfg=Gray gui=underline guifg=#a8a8a8

" Note: we never set 'term' because the defaults for B&W terminals are OK

" Diff Highlights
hi DiffAdd      cterm=none ctermbg=Black ctermfg=Green guibg=#005400 guifg=#00fc00
hi DiffChange   cterm=none ctermbg=Black ctermfg=Cyan guibg=#000054 guifg=#00fcfc 
hi DiffText     cterm=underline ctermbg=Black ctermfg=Yellow gui=underline guibg=#000054 guifg=#fcfc00
hi DiffDelete   cterm=none ctermbg=Black ctermfg=Red guifg=#fc0000 guibg=#540000
 
" syntax highlighting
hi Comment    cterm=none    ctermfg=DarkRed     gui=none     guifg=#a80000
hi Constant   cterm=none    ctermfg=DarkGreen   gui=none     guifg=#00a800
hi Error      ctermfg=White ctermbg=DarkRed guibg=#a80000 guifg=#fcfcfc
hi Identifier cterm=none    ctermfg=DarkCyan    gui=none     guifg=#00a8a8
hi NonText    ctermfg=DarkBlue  cterm=none      guifg=#5454fc  guibg=#000000 gui=none
hi MatchParen ctermfg=Yellow ctermbg=Blue guifg=#fcfc00 guibg=Blue 
hi PreProc    cterm=none    ctermfg=DarkMagenta gui=none     guifg=#a800a8
hi Special    cterm=none    ctermfg=Red    gui=none     guifg=#fc2424
hi SpecialKey ctermfg=Red   guifg=#ff2424
hi Statement  cterm=none    ctermfg=Blue        gui=none     guifg=#5454fc
hi Type       cterm=none    ctermfg=DarkCyan    gui=none     guifg=#00a8a8
hi Function   cterm=none    ctermfg=White       gui=none     guifg=#fcfcfc
hi Quote      cterm=none    ctermfg=DarkGray     gui=none     guifg=#fcfcfc
hi Title      cterm=none    ctermfg=Red     gui=none     guifg=#ff2424
hi Todo       cterm=underline ctermfg=White ctermbg=none gui=underline guifg=#fcfcfc guibg=#000000

" UI Elements
hi FoldColumn   ctermfg=Yellow      ctermbg=None       guibg=#000000 guifg=#fcfc00
hi Folded       ctermbg=None       ctermfg=Yellow      guibg=#000000 guifg=#fcfc00
hi Conceal      ctermfg=Yellow ctermbg=None guifg=#fcfc00 guibg=#000000
hi IncSearch    cterm=none ctermbg=blue gui=none guibg=#0000fc
hi Search       cterm=underline     ctermfg=Yellow      ctermbg=none   gui=underline   guifg=#fcfc00   guibg=#000000
hi LineNr       cterm=none          ctermfg=Brown       gui=none     guifg=#a85400
hi PMenu        ctermfg=DarkCyan    ctermbg=DarkBlue    guifg=DarkCyan  guibg=#000054
hi PMenuSel     ctermfg=Yellow      ctermbg=Blue        guifg=#fcfc00   guibg=#0000a8
hi PMenuSbar    ctermfg=Yellow  ctermbg=Blue guifg=#fcfc00 guibg=#0000a8
hi PMenuThumb   ctermfg=DarkCyan  ctermbg=DarkCyan guifg=#00a854 guibg=#00a854
hi StatusLine   cterm=none  ctermbg=DarkBlue    ctermfg=Yellow  gui=none    guibg=#0000a8  guifg=#fcfc00
hi StatusLineNC cterm=none  ctermbg=DarkBlue    ctermfg=DarkCyan gui=none   guibg=#0000a8  guifg=#00a8a8
hi SignColumn   ctermbg=None ctermfg=Yellow guibg=#000000 guifg=#fcfc00
hi TabLine      cterm=none          ctermfg=DarkCyan    ctermbg=DarkBlue gui=none   guifg=#00a8a8 guibg=#0000a8
hi TabLineSel   gui=none            ctermfg=Yellow       ctermbg=None   guifg=#fcfc00 guibg=#000000
hi TabLineFill  cterm=none ctermfg=DarkBlue ctermbg=DarkBlue   gui=none guifg=#0000a8 guibg=#0000a8
hi WildMenu     ctermfg=Yellow      ctermbg=None      guibg=#000000    guifg=#fcfc00
hi Visual       cterm=none  ctermbg=DarkBlue    gui=none    guibg=#000054
hi VisualNOS    cterm=none  ctermbg=DarkBlue    gui=none    guibg=#000054
hi VertSplit    ctermfg=DarkBlue    ctermbg=DarkBlue guifg=#0000a8 guibg=#0000a8
hi CursorColumn ctermbg=DarkBlue
hi CursorLine   ctermbg=DarkBlue
hi ColorColumn  ctermbg=DarkBlue

" file browsing
hi Directory    ctermfg=DarkCyan    guifg=#00a8a8

" VIM messages
hi ErrorMsg     ctermfg=White   ctermbg=DarkRed guibg=#540000   guifg=#fcfcfc
hi ModeMsg      ctermfg=Yellow  guifg=#fcfc00
hi MoreMsg      ctermfg=Yellow  guifg=#fcfc00
hi Question     ctermfg=Yellow  guifg=#fcfc00
hi WarningMsg   ctermfg=Yellow  guifg=#fcfc00

" Spell Checking
hi SpellBad     ctermfg=LightGray    ctermbg=DarkRed
hi SpellCap     ctermfg=LightGray    ctermbg=DarkCyan
hi SpellRare    ctermfg=LightGray    ctermbg=DarkMagenta
hi SpellLocal   ctermfg=LightGray    ctermbg=DarkBlue

" html highlighting tweaks
hi htmlLink cterm=underline ctermfg=Blue gui=underline guifg=#5454fc 
hi htmlItalic cterm=none    ctermfg=DarkGray    gui=italic  guifg=#545454
hi htmlBold cterm=bold      ctermfg=White       gui=bold    guifg=#fcfcfc
hi htmlBoldItalic cterm=bold ctermfg=White      gui=bold,italic  guifg=#fcfcfc
hi htmlBoldUnderline cterm=bold,underline gui=bold,underline
hi htmlBoldUnderlineItalic cterm=bold,underline ctermfg=DarkGray gui=bold,underline,italic
