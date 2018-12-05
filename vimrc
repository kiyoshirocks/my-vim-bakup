" ----------------------------------------------------
" Setting start
" ----------------------------------------------------
set      nocompatible
set      rtp+=~/.vim/bundle/Vundle.vim
call     vundle#begin()
filetype off

Plugin 'VundleVim/Vundle.vim'

" Add your plugins here

Plugin 'vim-scripts/L9'
Plugin 'tomtom/tlib_vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'eirvandew/supertab'
Plugin 'airblade/vim-gitgutter'

Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'vim-syntastic/syntastic'

Plugin 'kchmck/vim-coffee-script'
Plugin 'Shougo/neocomplete.vim'

Plugin 'w0rp/ale'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'bronson/vim-trailing-whitespace'
Plugin 'junegunn/vim-easy-align'


xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)




"

" ----------------------------------------------------
" Key mapping
" ----------------------------------------------------

" set <Leader>
" let mapleader = "\\"

map <silent>        <Leader>\ :noh<cr>
map <leader><space> :FixWhitespace<cr>

" navigating for long lines

map     j      gj
map     k      gk
map     <UP>   gk
map     <DOWN> gj
noremap H      ^
noremap L      $

" add a new line without entering insert mode
nmap <CR> o<Esc>

" let <BackSpace> backspaces
noremap <bs> X

" nerd tree toggle

map  <F1> :NERDTreeToggle<CR>
map! <F1> <Esc>:NERDTreeToggle<CR>

" tagbar
map  <F2> :TagbarToggle<CR>
map! <F2> <Esc>:TagbarToggle<CR>

" toggle wrap
map  <F3> :set wrap! wrap?<CR>
map! <F3> :set wrap! wrap?<CR>

map  <F4> :set nonumber! number?<CR>
map! <F4> :set nonumber! number?<CR>

" toggle paste mode
set pastetoggle=<F5>

map  <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>
map! <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>
map  <F7> :call SwitchMouseMode()<CR>
map! <F7> <Esc>:call SwitchMouseMode()<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" nerd commenter
let g:NERDSpaceDelims=1
nmap cc          <plug>NERDCommenterComment<DOWN>
nmap cu          <plug>NERDCommenterUncomment<DOWN>
nmap cs          <plug>NERDCommenterSexy<DOWN>
nmap ci          <plug>NERDCommenterInvert<DOWN>
nmap cy          <plug>NERDCommenterYank<DOWN>
nmap ce          <plug>NERDCommenterToEOL<DOWN>
nmap c<space>    <plug>NERDCommenterToggle<DOWN>

" tab to space : ctrl-t

map  <C-t> :call TabToSpaces()<CR>
map! <C-t> <Esc>:call TabToSpaces()<CR>



" ----------------------------------------------------
" Functions
" ----------------------------------------------------

function TabToSpaces()
    retab
    echo "Convert tab to spaces."
endfunction

function SwitchLineBreakingMode()
    if (&wrap == 0)
        set wrap
        echo "Switch to line breaking mode."
    else
        set nowrap
        echo "Switch to one line mode."
    endif
endfunction

" toggle mouse

function SwitchMouseode()
    if (&mouse == "a")
        let &mouse = ""
        echo "Mouse is disabled."
    else
        let &mouse = "a"
        echo "Mouse is enabled."
    endif
endfunction

" view functions

function IsBinary()
    if (&binary == 0)
        return ""
    else
        return "[Binary] "
    endif
endfunction
function FileSize()
    let bytes = getfsize(expand("%:p"))
    if bytes <= 0
        return "[E] "
    endif
    if bytes < 1024
        return "[" . bytes . "B]"
    elseif bytes < 1048576
        return "[" . (bytes / 1024) . "KB]"
    else
        return "[" . (bytes / 1048576) . "MB]"
    endif
endfunction

filetype plugin indent on
call     vundle#end()
