let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWidth = 30
nmap <F8> :WMToggle <cr>

let g:DoxygenToolkit_authorName="Hu Liupeng, hu.liupeng@embedway.com"
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
