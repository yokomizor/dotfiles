"General
set encoding=utf-8
set hidden
set shortmess+=c
set signcolumn=yes
set updatetime=300
set cmdheight=2

"Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

"Plugins
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
call plug#end()

"Colors
set background=dark
"hi Pmenu ctermbg=white ctermfg=black
"hi CocFloat ctermfg=black
"hi CocHintFloat ctermfg=black

"Syntax highlighting
syntax enable

"Enable filetype plugin
filetype plugin indent on

"Indentation behavior by file type
au FileType cpp setl sw=4 sts=4 et
au FileType python setl sw=4 sts=4 et
au FileType ruby setl sw=2 sts=2 et
au FileType erb setl sw=4 sts=4 et
au FileType html setl sw=2 sts=2 et
au FileType javascript setl sw=2 sts=2 et
au FileType javascriptreact setl sw=2 sts=2 et
au FileType typescript setl sw=2 sts=2 et
au FileType typescriptreact setl sw=2 sts=2 et
au FileType json setl sw=2 sts=2 et
au FileType css setl sw=2 sts=2 et
au FileType scss setl sw=4 sts=4 et
au FileType jsp setl sw=4 sts=4 et
au FileType java setl sw=4 sts=4 et
au FileType php setl sw=4 sts=4 et
au FileType coffee setl sw=2 sts=2 et
au FileType htmldjango setl sw=2 sts=2 et

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
set noundofile

"Show line numbers on the left
"set number
set relativenumber

"Ignore case in the search
set ignorecase

"Shortcuts
map <C-k> :NERDTreeFromBookmark 

"NERDTree setting defaults to work around http://github.com/scrooloose/nerdtree/issues/489
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeGlyphReadOnly = "RO"

"Edit gpg files
augroup encrypted
  au!
  autocmd BufReadPre,FileReadPre *.gpg
    \ setlocal bin
  autocmd BufReadPost,FileReadPost *.gpg
    \ execute "'[,']!gpg --decrypt --default-recipient-self --quiet 2>/dev/null" |
    \ setlocal nobin |
    \ execute "doautocmd BufReadPost " . expand("%:r")
  autocmd BufWritePre,FileWritePre *.gpg
    \ setlocal bin |
    \ '[,']!gpg --armor --encrypt --default-recipient-self --quiet 2>/dev/null
  autocmd BufWritePost,FileWritePost *.gpg
    \ silent u |
    \ setlocal nobin
augroup END
