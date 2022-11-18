"----------------------------------------------------------------------------------------
" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
"set number

" Automatically wrap text that extends beyond the screen length.
set wrap

"FINDING FILES

"Search down into subfolders
"Provide tab-completion for all file-related tasks
set path+=**

"Display all matching files when we tab complete
set wildmenu

"THINGS TO CONSIDER:
"- :b lets you autocomplete any open buffer

"----------------------------------------------------------------------------------------
" => Mouse Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set mouse=nicr

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"----------------------------------------------------------------------------------------
colorscheme desert  "colorscheme
"let g:airline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }
"----------------------------------------------------------------------------------------
func! WordProcessorMode()
 setlocal textwidth=80
 setlocal smartindent
 setlocal spell spelllang=en_us
 setlocal noexpandtab
endfu
com! WP call WordProcessorMode()      "activate Word Processor mode by WP
"----------------------------------------------------------------------------------------
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Uncomment to autostart the NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" PLUGINS ---------------------------------------------------------------- {{{
 call plug#begin()
  Plug 'dhruvasagar/vim-table-mode' "create tables
  Plug 'itchyny/lightline.vim' "color scheme for status bar 
  Plug 'ap/vim-css-color'    "highlights colors
  Plug 'vifm/vifm.vim'       "file manager 
  Plug 'mattn/emmet-vim'     "for web development
  Plug 'preservim/nerdtree'  "file manager
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'     " Highlighting Nerdtree
  "Plug 'ryanoasis/vim-devicons'                      " Icons for Nerdtree
  Plug 'junegunn/vim-emoji'                          " Vim needs emojis!
  Plug 'junegunn/vim-emoji'                          " Vim needs emojis!
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'rust-lang/rust.vim'
  Plug 'tpope/vim-fugitive'
  call plug#end()


" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.
" Move the splits arround!
nnoremap gh <C-W><C-H>
nnoremap gj <C-W><C-J>
nnoremap gk <C-W><C-K>
nnoremap gl <C-W><C-L>
" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

 " Clear status line when vimrc is reloaded.
  set statusline=
  
  " Status line left side.
  set statusline+=\ %F\ %M\ %Y\ %R
  
  " Use a divider to separate the left side from the right side.
  set statusline+=%=
  
  " Status line right side.
  set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
  
  " Show the status on the second to last line.
  set laststatus=2


" }}}
