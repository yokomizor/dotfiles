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
set nowritebackup
set noswapfile

"Show line numbers on the left
set number

"Shiftsel
set selectmode=mouse,key
set mousemodel=popup
set keymodel=startsel,stopsel
set selection=exclusive
