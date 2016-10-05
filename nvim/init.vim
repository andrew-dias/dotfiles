" Plugins (vim-plug)
call plug#begin()
Plug 'chriskempson/base16-vim'
Plug 'itchyny/lightline.vim'
Plug 'daviesjamie/vim-base16-lightline'
Plug 'editorconfig/editorconfig-vim'
call plug#end()

" set colorscheme to match terminal
if filereadable(expand("~/.vimrc_background"))
	let base16colorspace=256
	source ~/.vimrc_background
endif

" set lightline theme
let g:lightline = { 'colorscheme': 'base16' }

" show line numbers
set relativenumber

" list settings
nmap <leader>l :set list!<CR>
set listchars=tab:\¦\ ,eol:¬,trail:.
"set list lcs=tab:▸\ ,eol:¬,trail:.
