" Plugins
call plug#begin('~/.config/vim/plugged')

Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'heavenshell/vim-jsdoc'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'fleischie/vim-styled-components'
Plug 'hail2u/vim-css3-syntax'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-vinegar'
Plug 'chrisbra/Colorizer'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'ternjs/tern_for_vim'
Plug 'w0rp/ale'
Plug 'alvan/vim-closetag'
Plug 'Valloric/YouCompleteMe'
Plug 'godlygeek/tabular'
Plug 'SirVer/ultisnips'
Plug 'tkhren/vim-fake'
Plug 'jceb/vim-orgmode'

call plug#end()


" Group these files in one place instead of the working dir
set backupdir=~/.config/vim/backup//
set directory=~/.config/vim/swap//
set undodir=~/.config/vim/undo//


" Color scheme
colorscheme base16-default-dark


" Show ruler
set colorcolumn=81


" Enable mouse controls
set mouse=a


" Highlight search results
set hlsearch
nnoremap <F12> :nohlsearch<CR>


" Enable powerline fonts
let g:airline_powerline_fonts = 1


" Add JS syntax options
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1


" Autocomplete
let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'


" No line wrap
set nowrap


" set explorer in tree mode by default
let g:netrw_liststyle = 1


" Show status line
set laststatus=2


" Line stuff
set number
set cursorline


" Indentation
set expandtab
set softtabstop=4
set shiftwidth=4


" Javascript plugin options
let g:jsx_ext_required = 0


" Autoclose tags in those files
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx, *.js, *.xml"


" Hide preview window in autocomplete
set completeopt-=preview


" Change Ultisnips default bindings to avoid conflict with YCM
let g:UltiSnipsExpandTrigger = "<c-space>"
let g:UltiSnipsJumpForwardTrigger = "<c-space>"
let g:UltiSnipsJumpBackwardTrigger = "<c-s-space>"


" Call FZF with shortcut
nnoremap <C-P> :Files<CR>


" Search for selection in Visual mode
vnoremap // y/<C-R>"<CR>


" Align =, : and from
vnoremap == :Tabularize /\(=\<bar>:\<bar>from\)<CR>


" No delay to come back to normal mode
set timeoutlen=1000 ttimeoutlen=10


" Remove trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e


" Move lines or blocks with alt-up / alt-down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv


" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>


" Add CSS sorting options
let g:css_sorting_options = '--config /home/falxa/.postcssrc'

