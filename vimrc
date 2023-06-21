set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

let mapleader=';'

" General plugins
Plugin 'tpope/vim-fugitive'  " Git wrapper
Plugin 'itchyny/lightline.vim' " Lightweight status line
Plugin 'Scrooloose/Nerdtree'

" Language specific plugins
Plugin 'fatih/vim-go'  " Golang
Plugin 'vim-ruby/vim-ruby'  " Ruby
Plugin 'leafgarland/typescript-vim'  " TypeScript
Plugin 'moll/vim-node'  " Node.js
Plugin 'vim-python/python-syntax'  " Python
Plugin 'elixir-lang/vim-elixir'  " Elixir
Plugin 'rust-lang/rust.vim'  " Rust
Plugin 'progrium/bash.vim'  " Bash

" Colorscheme
Plugin 'NLKNguyen/papercolor-theme'  " PaperColor Theme
Plugin 'kaicataldo/material.vim'  " Material Theme
Plugin 'tomasr/molokai'  " Molokai theme

" Linter
Plugin 'dense-analysis/ale'

" Completion engine
Plugin 'neoclide/coc.nvim', {'branch': 'release'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable syntax highlighting
syntax on

" Vim-go settings
let g:go_fmt_command = "goimports"

" Use 2 spaces for Ruby indentation
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2

" Use 4 spaces for Python indentation
autocmd FileType python setlocal shiftwidth=4 tabstop=4

" Other general settings
set number  " Enable line numbers by default
set cursorline  " Highlight current line
set expandtab  " Use spaces instead of tabs
set shiftwidth=4  " Set default indent size
set softtabstop=4  " Set default tab size
set tabstop=4  " Set default tab size

" ALE settings
let g:ale_linters = {
\   'go': ['golint', 'govet'],
\   'ruby': ['rubocop'],
\   'typescript': ['eslint'],
\   'python': ['flake8'],
\   'elixir': ['credo'],
\   'rust': ['rustc'],
\   'sh': ['shellcheck'],
\ }

" Color Scheme settings
let g:material_theme_style='ocean'
set background=light
colorscheme material

" Coc settings
nmap <silent> <Tab> <Plug>(coc-snippets-expand-jump)

map <Leader>n :NERDTreeToggle<CR>
map <C-j> <esc>

""nmap <Leader>t :CtrlP<CR>
nmap <C-n> :nohlsearch<Enter>
nmap <C-K> <Plug>(caw:i:toggle)

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" auto formatting on save
let g:coc_global_extensions=[
 \ 'coc-json',
 \ 'coc-tsserver',
 \ 'coc-python',
 \ 'coc-go',
 \ 'coc-rust-analyzer',
 \ 'coc-elixir',
 \ 'coc-html',
 \ 'coc-css',
 \ 'coc-yaml',
 \ 'coc-docker',
 \ 'coc-sh',
 \]

" Coc settings
inoremap <expr> <TAB>  pumvisible() ? "\<C-y>" : "\<TAB>"
imap <expr><S-TAB> pumvisible() ? "\<C-e>" : "\<C-h>"

" autoformat on save
function! Formatonsave()
  let l:filetype = &filetype
  if l:filetype == 'python'
    :CocCommand python.formatFile
  elseif l:filetype == 'go'
    :CocCommand go.format
  elseif l:filetype == 'rust'
    :CocCommand rust-analyzer.format
  elseif l:filetype == 'typescript'
    :CocCommand editor.action.format
  elseif l:filetype == 'ruby'
    :CocCommand ruby.format
  elseif l:filetype == 'elixir'
    :CocCommand elixir.format
  endif
endfunction

augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.py,*.go,*.rs,*.ts,*.rb,*.ex call Formatonsave()
augroup END

