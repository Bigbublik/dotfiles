" Autocomplete engine
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

" Plugins
" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

" Plugins
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair.
Plug 'w0rp/ale' " Asynchronous Lint Engine.

" Initialize plugin system
call plug#end()

" NERDTree
autocmd vimenter * NERDTree

" For Neovim + Item2 + Truecolor 
" Enable true color
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Theme
colorscheme gruvbox
Plug 'itchyny/lightline.vim' " Light and configurable statusline/tabline plugin.

" Options
set mouse=a " Copy selected text with mouse to system clipboard
syntax enable " Enable syntax highlighting
set undofile " Save undos after file closes
set wildmode=longest:list,full " Complete longest common string, then each full match
set updatetime=250 " If this many milliseconds nothing is typed the swap file will be written to disk
set visualbell " Turn off the audio bell (no beeps)
set clipboard^=unnamed  " Make yanking copy to clipboard
set gdefault " Always do global substitutions
set whichwrap+=<,>,[,]
set completeopt-=preview " No annoying scratch preview above
set expandtab " Spaces on tabs
set shiftwidth=4
set softtabstop=2
set undolevels=1000
set smartindent " Indentation
set shortmess=Ia " Disable startup message
set fileencoding=utf-8 " Encoding when written to file
set fileformat=unix " Line endings
set timeout timeoutlen=1000 ttimeoutlen=10 " TODO: ?
set autowrite " Automatically save before :next, :make etc
set ignorecase " Search case insensitive:
set smartcase " .. but not when search pattern contains upper case characters
set nocursorcolumn
set nocursorline
set number
set wrap
set textwidth=79
set formatoptions=qrn1
set notimeout
set ttimeout
set ttimeoutlen=10
set nobackup " Don't create annoying backup files
set path=+** " Search down into subfolders

" Folding
set foldcolumn=1
set foldlevel=20
set foldlevelstart=7
set foldmethod=syntax
set foldignore=""
set nofoldenable

" Buffers
set hidden

" Searching
set wrapscan
set ignorecase
set smartcase
set gdefault

" Usable 'Tab'
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" UI
set cursorline  " Highlight current line
set showmatch
set tabstop=4 " Default indentation is 4 spaces long and uses tabs, not spaces
set matchtime=2
set termguicolors " Enable true colors support
let python_highlight_all = 1

set completeopt+=menu,menuone " Completion


" Enable file specific behavior like syntax highlighting and indentation filetype on
filetype plugin on
filetype indent on

