scriptencoding utf-8

" Vim が neocomplete 対応環境かどうかを返す
function! g:Meet_neocomplete_requirements()
    return has('lua') && (v:version > 703 || (v:version == 703 && has('patch885')))
endfunction

if has('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
let mapleader=';'

map <Leader>n :NERDTreeToggle<CR>''
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle     'Wombat'
NeoBundleLazy 'pyte'
NeoBundle     'vim-jp/vimdoc-ja'
NeoBundle     'vis'
NeoBundle     'vim-scripts/gtags.vim'
NeoBundle     'vim-scripts/SrcExpl'
NeoBundle     'vim-scripts/matchit.zip'
NeoBundle     'vim-scripts/Align'
" NeoBundle     'vim-scripts/YankRing.vim'
NeoBundle     'vim-scripts/yanktmp.vim'
NeoBundle     'LeafCage/yankround.vim'
NeoBundle     'vim-scripts/taglist.vim'
NeoBundleLazy 'vim-scripts/nginx.vim', { 'autoload' : { 'filetypes' :[ "nginx"], }, }
NeoBundleLazy 'tpope/vim-rails',   { 'autoload' : { 'filetypes' :[ "ruby"], }, }
NeoBundleLazy 'tpope/vim-rake',    { 'autoload' : { 'filetypes' :[ "ruby"], }, }
NeoBundleLazy 'tpope/vim-bundler', { 'autoload' : { 'filetypes' :[ "ruby"], }, }
NeoBundle     'tpope/vim-fugitive'
NeoBundle 'JavaScript-syntax'
NeoBundle     'tpope/vim-surround'
NeoBundle     'tpope/vim-endwise'
NeoBundleLazy 'Shougo/unite.vim', {
            \   'autoload' : {
            \       'commands' : [ "Unite", "UniteWithBufferDir", "UniteWithCurrentDir" ],
            \   },
            \ }

let vimproc_updcmd = has('win64') ? 'tools\\update-dll-mingw 64' : 'tools\\update-dll-mingw 32'
execute "NeoBundle 'Shougo/vimproc'," . string({
            \ 'build' : {
            \     'windows' : vimproc_updcmd,
            \     'cygwin' : 'make -f make_cygwin.mak',
            \     'mac' : 'make -f make_mac.mak',
            \     'unix' : 'make -f make_unix.mak',
            \    },
            \ })
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
NeoBundle     'kana/vim-submode'
NeoBundle     'kana/vim-textobj-user'
NeoBundle     'kana/vim-textobj-syntax'
NeoBundle     'kana/vim-textobj-indent'
NeoBundle     'kana/vim-textobj-function'
NeoBundle     'kana/vim-smartinput'
NeoBundle     'mattn/vim-textobj-url'
NeoBundleLazy 'rhysd/vim-textobj-ruby',      { 'autoload' : { 'filetypes' :[ "ruby"], }, }
NeoBundleLazy 'vim-ruby/vim-ruby.git',       { 'autoload' : { 'filetypes' :[ "ruby"], }, }
NeoBundleLazy 'derekwyatt/vim-scala.git',    { 'autoload' : { 'filetypes' :[ "scala"], }, }
NeoBundleLazy 'wlangstroth/vim-haskell.git', { 'autoload' : { 'filetypes' :[ "haskell"], }, }
NeoBundleLazy 'slim-template/vim-slim',      { 'autoload' : { 'filename_patterns' :[ "\.slim$"], }, }
NeoBundleLazy 'othree/html5.vim',            { 'autoload' : { 'filetypes' :[ "html"], }, }
NeoBundleLazy 'mattn/emmet-vim',             { 'autoload' : { 'filetypes' :[ "html"], }, }
NeoBundleLazy 'hail2u/vim-css3-syntax',      { 'autoload' : { 'filetypes' :[ "css", "less" ], }, }
NeoBundleLazy 'groenewege/vim-less',         { 'autoload' : { 'filename_patterns' :[ "\.less$" ], }, }
" NeoBundleLazy 'skammer/vim-css-color',       { 'autoload' : { 'filetypes' :[ "css", "less" ], }, }
NeoBundleLazy 'lilydjwg/colorizer',          { 'autoload' : { 'filetypes' :[ "css", "less" ], }, }
NeoBundleLazy 'kchmck/vim-coffee-script',    { 'autoload' : { 'filename_patterns' :[ "\.coffee$" ], }, }
NeoBundleLazy 'pangloss/vim-javascript',     { 'autoload' : { 'filetypes' :[ "javascript" ], }, }
NeoBundleLazy 'rcmdnk/vim-markdown',         { 'autoload' : { 'filetypes' :[ "markdown"], }, }
NeoBundleLazy 'elixir-lang/vim-elixir',      { 'autoload' : { 'filetypes' :[ "elixir"], }, }
NeoBundleLazy 'rhysd/vim-crystal',           { 'autoload' : { 'filetypes' :[ "crystal"], }, }
NeoBundleLazy 'syngan/vim-pukiwiki',         { 'autoload' : { 'commands' : 'PukiWiki' }, }
NeoBundleLazy 'fuenor/qfixgrep',             { 'autoload' : { 'commands' : ['Grep', 'Egrep', 'RGrep', 'FGrep', 'RFGrep', 'BGrep'], }, }
NeoBundle     'rking/ag.vim'
NeoBundle     'nathanaelkane/vim-indent-guides'
NeoBundle     'mrtazz/simplenote.vim'
NeoBundle     'mattn/webapi-vim'
NeoBundle     'mattn/excitetranslate-vim'
NeoBundle     'mattn/httpstatus-vim'
NeoBundle     'mattn/sonictemplate-vim'
NeoBundle     'chase/vim-ansible-yaml'
NeoBundle 'nsf/gocode', {'rtp': 'vim/'}
NeoBundle     'elzr/vim-json'
NeoBundle 'mattn/jscomplete-vim'
NeoBundle     'scrooloose/nerdtree'
NeoBundle     'mitsuhiko/vim-jinja'
NeoBundle 'yuroyoro/vim-python'
NeoBundle 'rodjek/vim-puppet'
NeoBundle     'ekalinin/Dockerfile.vim'
NeoBundle     'fatih/vim-go'
NeoBundle     'thinca/vim-quickrun'
NeoBundle     'thinca/vim-ref'
NeoBundle     'thinca/vim-singleton'
NeoBundleLazy 'thinca/vim-qfreplace',        { 'autoload' : { 'commands' : ['Qfreplace'], }, }
NeoBundleLazy 'thinca/vim-fontzoom',         { 'autoload' : { 'commands' : ['Fontzoom'], }, }
NeoBundleLazy 'yuku-t/vim-ref-ri', { 'autoload' : { 'filetypes' :[ "ruby"], }, }
NeoBundle     'mfumi/ref-dicts-en'
NeoBundleLazy 'tyru/open-browser.vim', {
            \    'autoload': {
            \        'commands' : ['OpenBrowserSearch', 'OpenBrowser'],
            \        'functions' : ['openbrowser#open', 'openbrowser#load'],
            \        'mappings': '<Plug>(openbrowser-'
            \    }
            \ }
NeoBundle     'tyru/vim-altercmd'
NeoBundleLazy 'tsukkee/unite-help', { 
            \   'depends' : 'Shougo/unite.vim',
            \   'autoload' : {
            \       'unite_sources' : 'help'
            \   }
            \ }

" Autocomplete {{{
NeoBundle 'Valloric/YouCompleteMe'
" "NeoBundle 'Shougo/neocomplete.vim'
" "NeoBundle 'asmod3us/neocomplete-ultisnips'
" "NeoBundle 'Shougo/neosnippet'
" "NeoBundle 'Shougo/neocomplcache.vim'
" "NeoBundle 'garbas/vim-snipmate'
" NeoBundle 'MarcWeber/vim-addon-mw-utils'
" NeoBundle 'tomtom/tlib_vim'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'disassembler/vim-snippets'
" }}}

" Vim が neocomplete に対応しているかどうかでプラグインを切換える
""if g:Meet_neocomplete_requirements()
""    NeoBundle 'Shougo/neocomplete'
""else
""    NeoBundle 'Shougo/neocomplcache'
""endif

" 要 python インターフェイス
if has('python')
    NeoBundleLazy 'Shougo/vinarise', {
                \   'autoload' : {
                \       'commands' : [ "Vinarise" ]
                \   }
                \ }
endif

" set virtualedit=all -
autocmd BufNewFile,BufRead *.jade set filetype=jade
autocmd BufNewFile,BufRead *.styl set filetype=styl
autocmd BufNewFile,BufRead *.json set filetype=json
autocmd BufRead,BufNewFile *.pp set ft=ruby

" Go 用
if $GOPATH != ''
    NeoBundle     'dgryski/vim-godef'
endif

" RSense 用
if $RSENSE_HOME != ''
    NeoBundleLazy 'm2ym/rsense',          { 'autoload' : { 'filetypes' :[ "ruby"], }, }
    NeoBundleLazy 'alpaca-tc/vim-rsense', { 'autoload' : { 'filetypes' :[ "ruby"], }, }
endif

" OS 別
if has("win32") || has("win64")
    " Windows
elseif has("unix") || has('mac') || has('macunix')
    " Linux or Mac
    NeoBundle     'sudo.vim'
    NeoBundle     'ujihisa/neco-look'
    NeoBundleLazy 'superbrothers/vim-quickrun-markdown-gfm', { 'autoload' : { 'filetypes' :[ "markdown"], }, }
endif

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
imap <C-j> <esc>

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
" ctrlp
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

filetype off
filetype plugin indent off
set runtimepath+=/usr/local/Cellar/go/misc/vim
filetype plugin indent on
syntax on
autocmd FileType c,go setlocal shiftwidth=4
autocmd FileType c,go setlocal tabstop=4
autocmd FileType c,go setlocal softtabstop=4
autocmd FileType c,go setlocal expandtab

call neobundle#end()
NeoBundleCheck
