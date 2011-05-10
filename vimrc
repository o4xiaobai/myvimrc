" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
" if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"hu.liupeng's setting
"syntax on
"Get out of VI's compatible mode..
set nocompatible
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
set cmdheight=2
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
set cursorcolumn

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
" Tlist
if &diff
"let Tlist_Auto_Open=0 "don't auto pen when compare two files
else
"let Tlist_Auto_Open=1 "auto pen Tlist when open a file
"let WMToggle_Auto_Open=1
"let g:AutoOpenWinManager = 1
endif


"set taglist window in right, delete the following line if you don't like
"let Tlist_Use_Right_Window=1
let Tlist_Auto_Update=1
let Tlist_File_Fold_Auto_Close=1
"auto close Tlist when exiting file.
let Tlist_Exit_OnlyWindow = 1

map <F5> :tabprevious<CR>
map <F6> :tabnext<CR>
map <C-n> :tabnew .<CR>

"let g:AutoOpenWinManager = 1

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
