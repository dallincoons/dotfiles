syntax enable

colorscheme atom-dark-256
set guifont=Fira_Code:
set t_CO=256

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set wildmenu
set wildmode=full

set history=200
"-------------General Settings--------------"
set backspace=indent,eol,start                                          "Make backspace behave like every other editor.
let mapleader = ',' 						    	"The default leader is \, but a comma is much better.
set number								"Let's activate line numbers.
set linespace=15  

"-------------Mappings--------------"


"-------------Plugins--------------"
set nocompatible
filetype plugin on

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

"-------------Auto-Commands--------------"

"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
