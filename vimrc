"       ┌────────────────────────────────────┐
"       │▌ ▌▗          ▌  ▗   ▛▀▖      ▌     │
"       │▙▞ ▄ ▌ ▌▞▀▖▞▀▘▛▀▖▄   ▙▄▘▞▀▖▞▀▖▌▗▘▞▀▘│
"       │▌▝▖▐ ▚▄▌▌ ▌▝▀▖▌ ▌▐ ▗▖▌▚ ▌ ▌▌ ▖▛▚ ▝▀▖│
"       │▘ ▘▀▘▗▄▘▝▀ ▀▀ ▘ ▘▀▘▝▘▘ ▘▝▀ ▝▀ ▘ ▘▀▀ │
"       └────────────────────────────────────┘
"       --  https://kiyoshirocks.github.io  --
"          It's Kiyoshi's vim settings from:
"       https://github.com/kiyoshirocks/my-vimrc 


" ----------------------------------------------------
" Vundle.vim - vim plugin manager 
" source: https://github.com/VundleVim/Vundle.vim
" ----------------------------------------------------
" 
" usage:
" ,,            toggle NERDTree
" cc            comment line
" cu            uncomment line
" ce            comment to EOL
" Ctrl-n        toggle mouse
" Ctrl-l        toggle wrap
" Ctrl-t        transform tab to space
"
" ----------------------------------------------------
" Setting start
" ----------------------------------------------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
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
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'



filetype plugin indent on
call vundle#end() 


nmap <Leader>,,       :TagbarToggle<CR>

"
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


" ----------------------------------------------------
" Key mapping
" ----------------------------------------------------

" the Leader
" let mpleader = "<Space>"

" tab controll

map <Leader>tx :tabclose<CR>
map <Leader>tc :tabedit<CR>


" nerd tree toggle

" autocmd VimEnter * NERDTree
map <silent>,, :NERDTreeToggle<CR>

" nerd commenter

let g:NERDSpaceDelims=1
map cc          <plug>NERDCommenterComment<CR>
map cu          <plug>NERDCommenterUncomment<CR>
map cs          <plug>NERDCommenterSexy<CR>
map ci          <plug>NERDCommenterInvert<CR>
map cy          <plug>NERDCommenterYank<CR>
map ce          <plug>NERDCommenterToEOL<CR>
map c<space>    <plug>NERDCommenterToggle<CR>

map <c-h> :noh<CR>

" ----------------------------------------------------
" Functions
" ----------------------------------------------------

" tab to space : ctrl-t

map <C-t> :call TabToSpaces()<CR>
map! <C-t> <Esc>:call TabToSpaces()<CR>
function TabToSpaces()
    retab
    echo "Convert tab to spaces."
endfunction

" toggle wrap : ctrl-l

map <C-l> :call SwitchLineBreakingMode()<CR>
map! <C-l> <Esc>:call SwitchLineBreakingMode()<CR>
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

map <C-n> :call SwitchMouseMode()<CR>
map! <C-n> <Esc>:call SwitchMouseMode()<CR>
function SwitchMouseMode()
    if (&mouse == "a")
        let &mouse = ""
        echo "Mouse is disabled."
    else
        let &mouse = "a"
        echo "Mouse is enabled."
    endif
endfunction


" ----------------------------------------------------
" Setting end
" ----------------------------------------------------

