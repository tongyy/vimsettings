syntax on
set shiftwidth=4
set tabstop=4
set nocompatible			 
filetype off				  
set backspace=2 "delete 
let g:airline_theme='wombat'
set laststatus=2 "airline
let g:jsx_ext_required = 0 "vim-jsx

set statusline+=%#warningmsg# "syntastic
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set nu

function! NumberToggle()
	if(&nu == 1)
		set nu!
		set rnu
	else
		set nornu
		set nu
	endif
endfunction

nnoremap <C-n> :call NumberToggle()<CR>
map <F2> :NERDTreeToggle<CR>
nnoremap <F3> :1,$s/^  /\t/g<CR>

"auto paste mode
function! WrapForTmux(s)
	if !exists('$TMUX')
	return a:s
	endif

	let tmux_start = "\<Esc>Ptmux;"
	let tmux_end = "\<Esc>\\"

	return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
	set pastetoggle=<Esc>[201~
	set paste
	return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
	
