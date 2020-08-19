call plug#begin('~/.vim/plugged')

Plug 'jaredgorski/SpaceCamp'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sainnhe/edge'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'wikitopian/hardmode'

call plug#end()

" VISUAL

" Colorscheme
set termguicolors
colorscheme spacecamp

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'minimalist'

" Other
set cursorline

" Italic comments
highlight Comment cterm=italic gui=italic

" FILE FORMATTING
set numberwidth=4
set nowrap textwidth=0
set tabstop=4 softtabstop=4
set shiftwidth=4
set ai si
set nu rnu
set nobackup
set noswapfile



" HARD MODE
let g:HardMode_level = 'wannabe'
let g:HardMode_hardmodeMsg = 'Don''t use this!'
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" NERDTREE
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
