" vim-airline (&vim-airline-themes)
let g:airline_theme='minimalist'
let g:airline#extensions#whitespace#enabled=0

function! AirlineInit()
	let g:airline_section_a = airline#section#create(['mode'])
	let g:airline_section_b = airline#section#create(['readonly'])
	let g:airline_section_c = airline#section#create(['file'])
	let g:airline_section_x = airline#section#create(['filetype'])
	let g:airline_section_y = airline#section#create(['branch'])
endfunction
autocmd User AirlineAfterInit call AirlineInit()

let g:airline_powerline_fonts = 1

let g:airline_symbols = {}
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.colnr = ''
let g:airline_symbols.linenr = ' '
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.notexists = ''
let g:airline_symbols.dirty=' *'

let g:airline_stl_path_style = 'short'

" nerdcommenter
let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
" let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }
let g:NERDCommentEmptyLines = 0
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

noremap <leader>cc <plug>NERDCommenterToggle
noremap <leader>cm <plug>NERDCommenterMinimal
noremap <leader>cs <plug>NERDCommenterSexy
noremap <leader>ca <plug>NERDCommenterAppend
noremap <leader>ch <plug>NERDCommenterAltDelims
noremap <leader>cy <plug>NERDCommenterYank

" vim-rainbow
let g:rainbow_active = 1

" fzf.vim
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fc :Commits<CR>
nnoremap <leader>fs :GFiles?<CR>
nnoremap <leader>fm :Marks<CR>

" nnn
let g:nnn#set_default_mappings = 0
nnoremap <leader>n :NnnPicker %:p:h<CR>

" coc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nnoremap <leader>x <plug>(coc-codelens-action)

" vim-matchup
let g:loaded_matchit = 1
let g:matchup_matchparen_enabled = 0

" vim-css-color
let g:cssColorVimDoNotMessMyUpdatetime = 1

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

