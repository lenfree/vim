set nocompatible              " be iMproved, required
filetype on                   " required

filetype plugin on

let mapleader=';'

map <Leader>n :NERDTreeToggle<CR>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Add your bundles here
Plugin 'scrooloose/nerdtree'
Plugin 'helino/vim-json'
Plugin 'tpope/vim-vividchalk'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-ruby/vim-ruby'
Plugin 'chase/vim-ansible-yaml'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'Valloric/YouCompleteMe'
" Track the engine.
Plugin 'SirVer/ultisnips'
" " Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme vividchalk

" set options
set nobackup
set nowritebackup
set showcmd " display incomplete commands
set incsearch " do incremental searching

" Always display the status line
set laststatus=2

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
set tw=80 " when the line will wrap
set colorcolumn=81

" Show special characters
set invlist

" set virtualedit=all - 
autocmd BufNewFile,BufRead *.jade set filetype=jade
autocmd BufNewFile,BufRead *.styl set filetype=styl
autocmd BufNewFile,BufRead *.json set filetype=json
autocmd BufRead,BufNewFile *.pp set ft=ruby
filetype on
syntax on

let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby'


" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
"
let g:ycm_min_num_of_chars_for_completion = 1
