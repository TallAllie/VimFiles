" This font should only be applied on my laptop
if $HOSTNAME == "localhost.localdomain"
 :set guifont=Monospace\ 14
endif

" Use only 256 colors
set   t_Co=256

:map <F2> :colorscheme default    <CR>
:map <F3> :colorscheme zenburn    <CR>
:map <F4> :colorscheme desert     <CR>
:map <F5> :colorscheme midnight   <CR>
:map <F6> :colorscheme solarized  <CR>
:map <F7> :colorscheme gruvbox    <CR>
" <F8> is mapped to some menu thing  TODO where?
:map <F9> :colorscheme PaperColor <CR>
" <F10> is mapped to the "File" menu TODO where?
" <F11> is mapped to toggle line wrapping in .vimrc
" <F12> is mapped to toggle background light/dark in plugin/togglebg.vim
call togglebg#map("<F12>")

" turn off toolbar
set guioptions-=T

" use this colorscheme in diff mode
if &diff
  :colorscheme github
endif

" replace Windows'y characters with more natural equivalents
"   doesn't work...
" au BufReadPost %s/\x85/:/g
" au BufReadPost %s/\x92/'/g
" au BufReadPost %s/\x93/"/g
" au BufReadPost %s/\x94/"/g
