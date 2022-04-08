set background=dark

hi clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "test"
hi Function ctermfg=Yellow
hi KeyWord ctermfg=Blue

if has('nvim')
	let g:terminal_color_0 = ''
	let g:terminal_color_1 = ''
	let g:terminal_color_2 = ''
	let g:terminal_color_4 = ''
	let g:terminal_color_5 = ''
	let g:terminal_color_6 = ''
	let g:terminal_color_7 = ''
	let g:terminal_color_8 = ''
	let g:terminal_color_9 = ''
	let g:terminal_color_10 = ''
	let g:terminal_color_11 = ''
	let g:terminal_color_12 = ''
	let g:terminal_color_13 = ''
	let g:terminal_color_14 = ''
	let g:terminal_color_15 = ''
endif
	 
hi StatusLine guibg=#00ff00
