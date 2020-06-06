" Common global settings.
set nocompatible
set clipboard=unnamed

set encoding=utf-8
set fileencodings=utf-8,gb18030,big5,euc-tw,iso88591,koi8-t
set autoread

" Color theme
let base16colorspace=256
set background=dark
colorscheme desert

syntax on
filetype plugin indent on

" Highlight tabs, trailing spaces.
set list!
set listchars=tab:>\ ,trail:.,extends:\#,nbsp:.


" Spell settingi StatusLine ctermfg=0 ctermbg=grey
hi TabLine ctermfg=grey ctermbg=none cterm=none
hi TabLineSel ctermfg=darkblue ctermbg=0 cterm=none
hi TabLineFill ctermfg=none ctermbg=none cterm=none

" set hybrid line numbers
set number
set relativenumber

" Global formatting.
set formatoptions+=Mm " For Chinese characters autowrap.
set showmatch
let g:formatterpath = ['~/Documents/astyle/build/mac/bin']


" Tab control
set autoindent
set smartindent
set noexpandtab " tabs ftw
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'


" vim-markdown
let g:markdown_fenced_languages = ['html', 'java', 'bash=sh']


" -----------------
" Syntastic
" -----------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


set mouse=a

set backspace=indent,eol,start " backspace over everything in insert mode"

" -----------------
" Plugins.
" -----------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-markdown'
Plug 'raimondi/delimitmate'
Plug 'vim/killersheep'
Plug 'tpope/vim-surround'
Plug 'chiel92/vim-autoformat'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'tpope/vim-commentary'
call plug#end()


let delimitMate_matchpairs = "(:),[:],{:}"
au FileType md,java,vim,html let b:delimitMate_matchpairs = "(:),[:],{:}"


" ##########################################################
" Mapping Shortcuts
" ##########################################################


"Set mapleader
let mapleader = "\<Space>"

"Fast reloading of the vimrc
nnoremap <leader>ss :source ~/.vimrc<CR>
"Fast editing of vimrc
nnoremap <leader>ee :e ~/.vimrc<CR>
"When .vimrc is edited, reload it
autocmd! bufwritepost ~/.vimrc source ~/.vimrc
" save 
nnoremap <leader>s :wa<CR>
" exit with ctrl saved
nnoremap <leader>w :wq<CR>
" exit with ctrl without saving
nnoremap <leader>q :q!<CR>
" open NerdTree
nnoremap <leader>t :NERDTree<CR>
" fuzzy search file
nnoremap <leader>f :CtrlP<CR>
" cp to yank the current fileanme
nnoremap <leader>cp :let @*=expand("%")<CR>
" Enter to indent brackets
inoremap {<CR> {<CR>}<C-o>O
" Autoformat
nnoremap <leader>af :Autoformat<CR>
" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>
