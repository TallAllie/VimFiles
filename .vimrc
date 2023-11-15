" Auto-detect filetypes and turn on syntax when the type is known
:filetype on
:syntax on

execute pathogen#infect()

" leave junk in below my own "~/tmp", and if not possible, in the local directory
" set   dir=$HOME/tmp,./
" turn off the annoying beep
set noerrorbells
" no automatic line wrapping as I type
set   formatoptions-=t
" highlight what I'm searching for everywhere
set   hlsearch
" searches are case-insensitive
set   ignorecase
" don't let me see whitespace, but use those characters when I do
set nolist
set   listchars=tab:>·,trail:·,eol:$
" turn on line numbering
set   number
" tiny little indentations
set   shiftwidth=2
set   tabstop=2
" this should ALSO turn off automatic line wrapping as I type
set   textwidth=0
" turn off the annoying visual beep
set   visualbell t_vb=
" ignore all whitespace in diff mode
set diffopt+=iwhite
set diffexpr=""

" Cadence logfiles put a comma just after the filename. This removes
" that so vim will split and open the file correctly with <CTRL-W CTRL-F>
set   isfname-=,

" The <F11> key will toggle word wrapping at the end of a line
:map <F11> :set wrap! <CR>

:map <C-,> :GtagsCursor<CR>

" :GitGutterEnable
" :GitGutterSignsEnable
" :GitGutterLineHiglightsDisable

" Fugitive git conflict resolution
" nnoremap <leader>gd :Gvdiff<CR>
" nnoremap gdh :diffget //2<CR>
" nnoremap gdl :diffget //3<CR>
