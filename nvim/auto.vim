if has('autocmd')
    " delete any trailing whitespaces
"    autocmd BufWritePre * :%s/\s\+$//ge

	" jump to the last position
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    	\| exe "normal! g'\"" | endif
endif
