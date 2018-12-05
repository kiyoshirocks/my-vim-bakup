
" ----------------------------------------------------
" vim airline & theme settings
" ----------------------------------------------------




" settings for airline


let g:airline_theme                                  = "molokai"
let g:airline_powerline_fonts                        = 1
let g:airline_detect_crypt                           = 1

let g:airline#extensions#branch#enabled              = 1
let g:airline#extensions#branch#empty_message        = ''
let g:airline#extensions#branch#displayed_head_limit = 10

let g:airline#extensions#csv#enabled                 = 1
let g:airline#extensions#tabline#enabled             = 1
let g:airline#extensions#tabline#show_splits         = 1

let g:airline#extensions#ale#enabled                 = 1
let airline#extensions#ale#error_symbol              = 'E:'
let airline#extensions#ale#warning_symbol            = 'W:'
let airline#extensions#ale#show_line_numbers         = 1
let airline#extensions#ale#open_lnum_symbol          = '(L'
let airline#extensions#ale#close_lnum_symbol         = ')'

let g:airline#extensions#hunks#enabled               = 1
let g:airline#extensions#hunks#non_zero_only         = 1
let g:airline#extensions#hunks#hunk_symbols          = ['+', '~', '-']

let g:airline#extensions#syntastic#enabled           = 1
let airline#extensions#syntastic#error_symbol        = 'E:'
let airline#extensions#syntastic#stl_format_err      = '%E{[%e(#%fe)]}'
let airline#extensions#syntastic#warning_symbol      = 'W:'
let airline#extensions#syntastic#stl_format_warn     = '%W{[%w(#%fw)]}'

let g:airline#extensions#tagbar#enabled              = 1
let g:airline#extensions#tagbar#flags                = ''  "(default)

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab


" ----------------------------------------------------
" status bar settings
" ----------------------------------------------------


" set statusline=%#filepath#
" set statusline+=\ %f
" set statusline+=\ %#separ_01#

" set statusline+=%=

" set statusline+=%#filetype#
" set statusline+=\ %{strlen(&filetype)?&filetype:'plain'}\ [%{strlen(&fenc)?&fenc:&enc},\ %{&ff}]

" set statusline+=\ %#separ_02#
" set statusline+=%#position#
" set statusline+=\ %3c,%5l/%4L\ [%3p%%]\  

" set statusline+=%#separ_03#
" set statusline+=%#filesize#
" set statusline+=\ %{FileSize()}%{IsBinary()}

" hi filepath cterm=none ctermbg=240  ctermfg=40
" hi separ_01 cterm=none ctermbg=237  ctermfg=240
" hi filetype cterm=none ctermbg=237  ctermfg=45
" hi separ_02 cterm=none ctermbg=31   ctermfg=237
" hi position cterm=none ctermbg=31   ctermfg=228
" hi separ_03 cterm=none ctermbg=34   ctermfg=31
" hi filesize cterm=none ctermbg=34   ctermfg=228

