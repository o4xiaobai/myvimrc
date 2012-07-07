" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

"hu.liupeng's setting
syntax on
"Get out of VI's compatible mode..
set nocompatible
set foldmethod=manual
"Sets how many lines of history VIM har to remember
set history=400
"Set to auto read when a file is changed from the outside
set autoread

"""""""""""""""""""""""""""""""""""""
" VIM userinterface
"""""""""""""""""""""""""""""""""""""
"Have the mouse enabled all the time:
"when you need to copy from vim, maybe you have to ':set mouse=' first
"set mouse=a
"Set 7 lines to the curors away from the border- when moving vertical..
set so=7
"Always show current position
set ruler
"The commandbar is 2 high
set cmdheight=1
"Show line number
set nu

"Highlight search things
set hlsearch
" Incremental search
set incsearch		
" Show matching brackets.
set showmatch		
" show an underline at current line
set cursorline
" highlight current column
" set cursorcolumn

"""""""""""""""""""""""""""""""""""""
" Text options
"""""""""""""""""""""""""""""""""""""
set expandtab
set ts=4
set shiftwidth=4

""""""""""""""""""""""""""""""
" Indent
""""""""""""""""""""""""""""""
"set autoindent
set smartindent

"""""""""""""""""""""""""""""""""""""
"plugins
set tags=tags;/

"""""""""""""""""""""""""""""""""""""

map <F9> :tabprevious<CR>
map <F10> :tabnext<CR>
map <C-n> :tabnew .<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
      set csprg=/usr/bin/cscope
      set csto=1
      set cst
      set nocsverb
      " add any database in current directory
      if filereadable("cscope.out")
          cs add cscope.out
      else 
          if filereadable("../cscope.out")
              cs add ../cscope.out
          endif
      endif
      set csverb
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

let g:DoxygenToolkit_authorName="Hu Liupeng, hu.liupeng2011@gmail.com"
let g:Doxygen_enhanced_color=1
"let g:DoxygenToolkit_paramTag_pre="@Param " 
"let g:DoxygenToolkit_returnTag="@Returns   " 
"let g:DoxygenToolkit_interCommentTag = " * "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------" 
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------" 

set fileencodings=utf-8,ucs-bom,gbk,cp936
iab xdate <c-r>=strftime("%Y/%m/%d %H:%M:%S")<cr>

"括号自动补全
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {}<ESC>i
":inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap < <><ESC>i
":inoremap > <c-r>=ClosePair('>')<CR>

function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf
