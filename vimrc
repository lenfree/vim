scriptencoding utf-8

function! g:Meet_neocomplete_requirements()
    return has('lua') && (v:version > 703 || (v:version == 703 && has('patch885')))
endfunction

if has('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
let mapleader=';'

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle     'Wombat'
NeoBundle     'vis'
NeoBundle     'vim-scripts/matchit.zip'
NeoBundle     'vim-scripts/Align'
NeoBundle     'vim-scripts/YankRing.vim'
NeoBundle     'vim-scripts/yanktmp.vim'
NeoBundle     'LeafCage/yankround.vim'
NeoBundle     'vim-scripts/taglist.vim'
NeoBundleLazy 'vim-scripts/nginx.vim', { 'autoload' : { 'filetypes' :[ "nginx"], }, }
NeoBundleLazy 'tpope/vim-rails',   { 'autoload' : { 'filetypes' :[ "ruby"], }, }
NeoBundleLazy 'tpope/vim-rake',    { 'autoload' : { 'filetypes' :[ "ruby"], }, }
NeoBundleLazy 'tpope/vim-bundler', { 'autoload' : { 'filetypes' :[ "ruby"], }, }
NeoBundle     'tpope/vim-fugitive'
NeoBundle     'JavaScript-syntax'
NeoBundle     'tpope/vim-surround'
NeoBundle     'tpope/vim-endwise'
NeoBundleLazy 'Shougo/unite.vim', {
            \   'autoload' : {
            \       'commands' : [ "Unite", "UniteWithBufferDir", "UniteWithCurrentDir" ],
            \   },
            \ }

NeoBundleLazy 'Shougo/vimshell.git', {
            \ 'depends' : 'Shougo/vimproc',
            \ 'autoload' : {
            \   'commands' : [{ 'name' : 'VimShell',
            \                   'complete' : 'customlist,vimshell#complete'},
            \                 'VimShellExecute', 'VimShellInteractive',
            \                 'VimShellTerminal', 'VimShellPop'],
            \   'mappings' : ['<Plug>(vimshell_']
            \   }
            \ }
NeoBundle     'Shougo/vimfiler'
NeoBundle     'Shougo/neosnippet'
NeoBundle     'Shougo/neosnippet-snippets'
NeoBundle     'The-NERD-tree'
NeoBundle     'The-NERD-Commenter'
NeoBundle     'scrooloose/syntastic'
NeoBundle     'itchyny/lightline.vim'
NeoBundleLazy 'rhysd/vim-textobj-ruby',      { 'autoload' : { 'filetypes' :[ "ruby"], }, }
NeoBundleLazy 'vim-ruby/vim-ruby.git',       { 'autoload' : { 'filetypes' :[ "ruby"], }, }
NeoBundleLazy 'mattn/emmet-vim',             { 'autoload' : { 'filetypes' :[ "html"], }, }
NeoBundleLazy 'groenewege/vim-less',         { 'autoload' : { 'filename_patterns' :[ "\.less$" ], }, }
NeoBundleLazy 'kchmck/vim-coffee-script',    { 'autoload' : { 'filename_patterns' :[ "\.coffee$" ], }, }
NeoBundleLazy 'pangloss/vim-javascript',     { 'autoload' : { 'filetypes' :[ "javascript" ], }, }
NeoBundleLazy 'rcmdnk/vim-markdown',         { 'autoload' : { 'filetypes' :[ "markdown"], }, }
NeoBundleLazy 'rhysd/vim-crystal',           { 'autoload' : { 'filetypes' :[ "crystal"], }, }
NeoBundleLazy 'fuenor/qfixgrep',             { 'autoload' : { 'commands' : ['Grep', 'Egrep', 'RGrep', 'FGrep', 'RFGrep', 'BGrep'], }, }
NeoBundle     'rking/ag.vim'
NeoBundle     'nathanaelkane/vim-indent-guides'
NeoBundle     'mattn/webapi-vim'
NeoBundle     'mattn/httpstatus-vim'
NeoBundle     'chase/vim-ansible-yaml'
NeoBundle     'nsf/gocode', {'rtp': 'vim/'}
NeoBundle     'elzr/vim-json'
NeoBundle     'mattn/jscomplete-vim'
NeoBundle     'scrooloose/nerdtree'
NeoBundle     'mitsuhiko/vim-jinja'
NeoBundle     'yuroyoro/vim-python'
NeoBundle     'rodjek/vim-puppet'
NeoBundle     'ekalinin/Dockerfile.vim'
NeoBundle     'fatih/vim-go'
NeoBundle     'ctrlpvim /ctrlp.vim'
NeoBundle     'thinca/vim-quickrun'
NeoBundleLazy 'yuku-t/vim-ref-ri', { 'autoload' : { 'filetypes' :[ "ruby"], }, }
NeoBundle     'mfumi/ref-dicts-en'
NeoBundle     'tyru/vim-altercmd'
NeoBundleLazy 'tsukkee/unite-help', { 
            \   'depends' : 'Shougo/unite.vim',
            \   'autoload' : {
            \       'unite_sources' : 'help'
            \   }
            \ }

" Autocomplete {{{
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'disassembler/vim-snippets'
" }}}

" python
let python_highlight_all=1
NeoBundleLazy 'Shougo/vinarise', {
            \   'autoload' : {
            \       'commands' : [ "Vinarise" ]
            \   }
            \ }

" set virtualedit=all -
autocmd BufNewFile,BufRead *.jade set filetype=jade
autocmd BufNewFile,BufRead *.styl set filetype=styl
autocmd BufNewFile,BufRead *.json set filetype=json
autocmd BufRead,BufNewFile *.pp set ft=ruby

" Go
if $GOPATH != ''
    NeoBundle     'dgryski/vim-godef'
endif

" RSense
if $RSENSE_HOME != ''
    NeoBundleLazy 'm2ym/rsense',          { 'autoload' : { 'filetypes' :[ "ruby"], }, }
    NeoBundleLazy 'alpaca-tc/vim-rsense', { 'autoload' : { 'filetypes' :[ "ruby"], }, }
endif

" Mac
NeoBundle     'sudo.vim'
NeoBundle     'ujihisa/neco-look'
NeoBundleLazy 'superbrothers/vim-quickrun-markdown-gfm', { 'autoload' : { 'filetypes' :[ "markdown"], }, }

set number
set list
set showmatch
set smartcase
set ruler
set title
set laststatus=2
set cmdheight=2
set clipboard+=unnamed
set cursorline
set hlsearch
set autoread
set noswapfile
set guifont=Ricty-RegularForPowerline:h14
set guioptions+=a
set noimdisable
set iminsert=0 imsearch=0
set noimcmdline
set showcmd
set showmode
set nrformats=

set tabstop=2
set shiftwidth=2
set colorcolumn=81
set tw=90
set expandtab
set autoindent
set smartindent
"set indentexpr
set smarttab
set visualbell t_vb=
set noerrorbells

" https://github.com/scrooloose/vimfiles/blob/master/colors/jhdark.vim
hi Directory guifg=#FF0000 ctermfg=red
hi Comment   guifg=#008800  gui=none ctermfg=yellow cterm=none
autocmd InsertLeave * set nopaste

" Shortcut
map <Leader>n :NERDTreeToggle<CR>
map <C-j> <esc>
nmap <Leader>s :VimShell<CR>
nmap <Leader>t :CtrlP<CR>
nmap <C-n> :nohlsearch<Enter>
nmap <C-m> :set paste<Enter>
nmap <C-x> :set nopaste<Enter>
nmap <silent> <C-e> :NERDTreeToggle<CR>
nmap <C-K> <Plug>(caw:i:toggle)
vmap <C-K> <Plug>(caw:i:toggle)

nnoremap <Space>gst :Gstatus
nnoremap <Space>gad :Gwrite
nnoremap <Space>gdf :Gdiff
nnoremap <Space>gcm :Gcommit -m 
nnoremap <Space>gg :Ggrep 
nnoremap <Space>gbl :Gblame
nnoremap <silent> [t :tabn<CR>
nnoremap <silent> ]t :tabp<CR>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

inoremap :set iminsert=0
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

vnoremap <silent> > >gv
vnoremap <silent> < <gv
vnoremap <silent> <C-p> "0p<CR>

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" netrwは常にtree view
let g:netrw_liststyle = 0
let g:netrw_altv = 1
let g:netrw_alto = 1

" syntastic
let g:syntastic_mode_map = { 'mode': 'active',
  \ 'active_filetypes': [],
  \ 'passive_filetypes': ['javascript'] }
let g:syntastic_auto_loc_list = 1
let g:syntastic_javascript_checker = 'jshint'
" let g:syntastic_mode_map = { 'mode': 'active',
"   \ 'active_filetypes': ['ruby'] }
" let g:syntastic_ruby_checkers = ['rubocop']

let g:use_processing_java=1

" quickrun
let g:quickrun_config = {}
let g:quickrun_config["_"] = {
    \ "runner/vimproc/updatetime" : 80,
    \ "outputter/buffer/split" : ":rightbelow 8sp",
    \ "outputter/error/error" : "quickfix",
    \ "outputter/error/success" : "buffer",
    \ "outputter" : "error",
    \ "runner" : "vimproc"
\ }
let g:quickrun_config.processing =  {
    \ 'command': 'processing-java',
    \ 'exec': '%c --sketch=$PWD --output=~/Documents/Processing --run'
\ }

" lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"x":""}',
      \ },
      \ 'separator': { 'left': "\u2b80", 'right': "\u2b82" },
      \ 'subseparator': { 'left': "\u2b81", 'right': "\u2b83" }
      \ }
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*,vendor/*

let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby, javascript'

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" " " If you want :UltiSnipsEdit to split your window.
" " let g:UltiSnipsEditSplit="vertical"
" "
let g:ycm_min_num_of_chars_for_completion = 1

" golang
let g:neocomplete#enable_at_startup = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_operators = 1
let g:go_highlight_interfaces = 1
let g:go_fmt_autosave = 0
let g:go_fmt_command = "goimports"
let g:go_fmt_options = "-tabs=false -tabwidth=4"

au BufRead,BufNewFile *.js set filetype=javascript shiftwidth=4
au BufRead,BufNewFile *.js.hbs set filetype=javascript shiftwidth=4
au BufRead,BufNewFile *.hbsp set filetype=handlebars shiftwidth=4
au BufRead,BufNewFile *.scss set filetype=scss shiftwidth=2
au BufRead,BufNewFile *.ftl set filetype=ftl
au BufRead,BufNewFile *.rb set filetype=ruby shiftwidth=2
au BufRead,BufNewFile *.jbuilder set filetype=ruby shiftwidth=2
au BufRead,BufNewFile *.html set filetype=html shiftwidth=2
au BufRead,BufNewFile *.coffee set filetype=coffee shiftwidth=2
au BufRead,BufNewFile *.ts set filetype=typescript
au BufRead,BufNewFile *.jade set filetype=jade shiftwidth=2
au BufRead,BufNewFile *.json set filetype=json shiftwidth=2
au BufRead,BufNewFile *.styl set filetype=stylus shiftwidth=2
au BufRead,BufNewFile *.hbsp set filetype=handlebars shiftwidth=4
au BufRead,BufNewFile *.haml set filetype=haml shiftwidth=2
au BufRead,BufNewFile *.eco set filetype=eco shiftwidth=2
au BufRead,BufNewFile *.pdf.erb set filetype=eruby shiftwidth=2
au BufNewFile,BufRead *.go setlocal noet ts=8 sw=8 sts=8

filetype off
filetype plugin indent off
set runtimepath+=/usr/local/Cellar/go/misc/vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
filetype plugin indent on
syntax on
autocmd FileType c,go setlocal shiftwidth=8
autocmd FileType c,go setlocal tabstop=8
autocmd FileType c,go setlocal softtabstop=8
autocmd FileType c,go setlocal expandtab


"https://github.com/junegunn/fzf
set rtp+=/usr/local/opt/fzf


call neobundle#end()
NeoBundleCheck
