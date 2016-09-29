syntax on
set nocompatible              " be iMproved, required
filetype off                  " required

" ========= vundle ==========
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"jump
Plugin 'Lokaltog/vim-easymotion'

"gui
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

"elixir
Plugin 'elixir-lang/vim-elixir'
Plugin 'mmorearty/elixir-ctags'

"code completion
Plugin 'c9s/perlomni.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'

"find
Plugin 'kien/ctrlp.vim'

"syntastic
Plugin 'scrooloose/syntastic'

"color scheme
Plugin 'jlanzarotta/colorSchemeExplorer'
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nanotech/jellybeans.vim'
Plugin 'tomasr/molokai'

call vundle#end()            " required
filetype on    " required
filetype indent on    " required
filetype plugin on    " required
" ========= vundle ==========

"key map
nmap we <Esc>:NERDTree<CR>
nmap tg <Esc>:TagbarToggle<CR>
nmap res <Esc>:res<CR>
map s <Plug>(easymotion-s)
let g:UltiSnipsExpandTrigger="<C-J>"


set ts=4
set expandtab
set smartindent
set shiftwidth=4
set softtabstop=4


"let g:molokai_original = 1
set t_Co=256
colorscheme up

"elixir tagbar
let g:tagbar_type_elixir = {'ctagstype': 'elixir', 'kinds': ['f:functions:0:0', 'c:callbacks:0:0', 'd:delegates:0:0', 'e:exceptions:0:0', 'i:implementations:0:0', 'a:macros:0:0', 'o:operators:0:0', 'm:modules:0:0', 'p:protocols:0:0', 'r:records:0:0'], 'sro': '.', 'kind2scope': {'m': 'modules'}, 'scope2kind': {'modules': 'm'}}

"you complete me
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

"syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_perl_checkers = ['perl', 'podchecker']
"let g:syntastic_perl_lib_path = ['perllib', 'perllib']
let g:syntastic_enable_perl_checker = 1

"airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

let perl_fold = 1
