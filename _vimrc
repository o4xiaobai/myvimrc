let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWidth = 30
nmap <F8> :WMToggle <cr>

"if &term =~ "xterm"
    " SecureCRT versions prior to 6.1.x do not support 4-digit DECSET
    "     let &t_ti = "\<Esc>[?1049h"
    "     let &t_te = "\<Esc>[?1049l"
    " Use 2-digit DECSET instead
"    let &t_ti = "\<Esc>[?47h"
"    let &t_te = "\<Esc>[?47l"
"endif 

let g:doxygenToolkit_authorName="Hu Liupeng, hu.liupeng@embedway.com"
let g:doxygen_enhanced_color=1
set fileencodings=utf-8,ucs-bom,gbk,cp936
