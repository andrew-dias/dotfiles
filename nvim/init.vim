" Plugins (vim-plug)
call plug#begin('~/.local/share/nvim/plugged')
Plug 'chriskempson/base16-vim'
Plug 'itchyny/lightline.vim'
Plug 'daviesjamie/vim-base16-lightline'
Plug 'editorconfig/editorconfig-vim'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" set colorscheme to match terminal
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" set lightline theme
let g:lightline = { 'colorscheme': 'base16' }

" show line numbers
set number

" set search case-sensitivity
set ignorecase
set smartcase

" list settings
nmap <leader>l :set list!<CR>
set list listchars=tab:\¦\ ,eol:¬,trail:.

" break bad habits
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" remap Escape key
inoremap jj <Esc>

" easier split navigation
nnoremap <C-j> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

