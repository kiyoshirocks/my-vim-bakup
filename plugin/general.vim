
" ----------------------------------------------------
" vim settings
" ----------------------------------------------------

filetype    on                                  "检测文件类型
filetype    indent on                           "针对不同的文件类型采用不同的缩进格式
filetype    plugin on                           "允许插件
filetype    plugin indent on                    "启动自动补全
colorscheme pablo
syntax      enable
syntax      on
hi          Search                cterm=NONE ctermbg=24   ctermfg=214
set         t_Co=256
set         background=dark
set         laststatus=2
set         nocompatible
set         number
set         ignorecase
set         smartcase
set         hlsearch
set         incsearch
set         smartindent
set         confirm
set         backspace=indent,eol,start
set         cmdheight=1
set         showcmd
set         showmode
set         list
set         listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set         clipboard+=unnamed
set         wrap
set         lbr
set         fo+=mB
set         mouse=a
set         backspace=eol,start,indent          "Configure backspace so i acts as it should act
set         iskeyword+=_,$,@,%,#                "带有如下符号的单词不要被换行分割
set         shiftwidth=2
set         tabstop=2
set         softtabstop=2
set         expandtab
set         autoread                            "当文件在外部被改变时，Vim自动更新载入
set         shortmess=atI                       "启动的时候不显示那个援助索马里儿童的提示
set         t_ti= t_te=                         "退出vim后，内容显示在终端屏幕
set         hidden
set         nobackup                            "取消备份。 视情况自己改

" Set extra options when running in GUI mode
if has("gui_running")
  set guifont=Monaco:h14
  set guioptions-=T
  set guioptions+=e
  set guioptions-=r
  set guioptions-=L
  set guitablabel=%M\ %t
  set showtabline=1
  set linespace=3
  set noimd
  set t_Co=256
else
  "set guifont=Courier_New:h10:cANSI            " 设置字体
  set guifont=Fixedsys:h10:cANSI                " 设置字体
endif

" file enconding rules
if has("multi_byte")
  set fileencoding=utf-8
  set fileencodings=utf-8,utf-16,big5,gb2312,gbk,gb18030,euc-jp,euc-kr,latin1,ucs-bom,cp936
  set fileformats=unix,dos
  set encoding=utf-8

  " CJK environment detection and corresponding setting
  if v:lang =~ "^zh_CN"
    " Use cp936 to support GBK, euc-cn == gb2312
    set encoding=cp936
    set termencoding=cp936
    set fileencoding=cp936
  elseif v:lang =~ "^zh_TW"
    " cp950, big5 or euc-tw
    " Are they equal to each other?
    set encoding=big5
    set termencoding=big5
    set fileencoding=big5
  elseif v:lang =~ "^ko"
    " Copied from someone's dotfile, untested
    set encoding=euc-kr
    set termencoding=euc-kr
    set fileencoding=euc-kr
  elseif v:lang =~ "^ja_JP"
    " Copied from someone's dotfile, untested
    set encoding=euc-jp
    set termencoding=euc-jp
    set fileencoding=euc-jp
  endif

  " Detect UTF-8 locale, and replace CJK setting if needed
  if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
    set encoding=utf-8
    set termencoding=utf-8
    set fileencoding=utf-8
  endif
else
  echoerr "Sorry, this version of (g)vim was not compiled with multi_byte"
endif
