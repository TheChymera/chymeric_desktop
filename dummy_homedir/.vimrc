set spell spelllang=en_gb

highlight BadWhitespace ctermbg=red guibg=darkred
:match BadWhitespace /\s\+\%#\@<!$/

"highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
"
"augroup vimrc_autocmds
"    autocmd!
"    autocmd BufEnter,WinEnter * call matchadd('OverLength', '\%>99v.\+', -1)
"augroup END

let g:jedi#completions_enabled = 1
let g:jedi#popup_on_dot = 0
let g:airline_theme='seagull'
let g:airline_powerline_fonts = 1
