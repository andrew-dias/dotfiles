" Plugins (vim-plug)
call plug#begin()
Plug 'chriskempson/base16-vim'
Plug 'itchyny/lightline.vim'
Plug 'daviesjamie/vim-base16-lightline'
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

" set default tab behaviour
set ts=4 sts=4 sw=4 noexpandtab

if has("autocmd")
	:filetype on

	autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

	" strip trailing whitespace on every save
	autocmd BufWritePre *.py,*.js :call <SID>StripTrailingWhitespaces()
endif

" strip training whitespaces
function! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfunction

