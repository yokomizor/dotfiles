"Syntax highlighting
syntax enable

"Enable filetype plugin
filetype plugin indent on

"Indentation behavior by file type
au FileType python setl sw=2 sts=2 et
au FileType html setl sw=2 sts=2 et
au FileType javascript setl sw=2 sts=2 et
au FileType css setl sw=2 sts=2 et
au FileType php setl sw=4 sts=4 et

"Highlight
set hlsearch

"Ruler (bottom/right)
set ruler

"Fixed lines when moving vertical
set so=7

"Enable mouse
set mouse=a
set ttymouse=xterm2

"Disable GUI toolbar
set guioptions-=T

"Don't save backup files
set nobackup

"Show line numbers on the left
set number

"Key mapping for tab navigation
noremap <C-T> :tabnew<CR>
noremap <C-TAB> :tabnext<CR>
noremap <C-S-TAB> :tabprevious<CR>
inoremap <C-T> <C-O>:tabnew<CR>
inoremap <C-TAB> <C-O>:tabnext<CR>
inoremap <C-S-TAB> <C-O>:tabprevious<CR>

"Indent tab
vnoremap < <gv
vnoremap > >gv
noremap <TAB> >
noremap <S-TAB> <

"Deleta linha com CTRL+D
noremap <C-D> dd
vnoremap <C-D> <C-C>dd
inoremap <C-D> <C-O>dd

"Cut/Copy/Paste
vnoremap <C-X> "+x
vnoremap <S-Del> "+x
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y
noremap <C-V>        "+gP
noremap <S-Insert>   "+gP
inoremap <C-V>       <C-O>:set nosi<CR><C-R>+<C-O>:set si<CR>
inoremap <S-Insert>  <C-R>+
cnoremap <C-V>       <C-O>:set nosi<CR><C-R>+<C-O>:set si<CR>
cnoremap <S-Insert>  <C-R>+

"Save
noremap <C-S>  :w<CR>
vnoremap <C-S> <C-C>:w<CR>
inoremap <C-S> <C-O>:w<CR>

"Do/Undo
noremap <C-Z> u
vnoremap <C-Z> <C-C>u
inoremap <C-Z> <C-O>u
noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>

"Shiftsel
set selectmode=mouse,key
set mousemodel=popup
set keymodel=startsel,stopsel
set selection=exclusive
