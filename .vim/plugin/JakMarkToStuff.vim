" TODO update s:JakMarkPath accordingly
" c.f. https://github.com/alzwded/JakMark/blob/master/vim/plugin/JakMarkToStuff.vim
let s:JakMarkPath = 'C:\Projects\JakMark\JakMark\bin\Release\JakMark.exe'

autocmd BufNewFile,BufRead *.jm setlocal syntax=jm

function! JakMarkToHtml()
    let l:currentFile = expand("%:t")
    "let l:args = ' "'.l:currentFile.'" .html'
    let l:args = ' - .html'
    let l:cmd = ":%!".s:JakMarkPath.l:args
    execute "normal "
\       .":1,$y\<CR>"
\       .":new\<CR>"
\       ."p\<ESC>"
\       .l:cmd."\<CR>"
endfunction

function! JakMarkToHtmlSnippet()
    let l:currentFile = expand("%:t")
    "let l:args = ' "'.l:currentFile.'" -'
    let l:args = ' - -'
    let l:cmd = ":%!".s:JakMarkPath.l:args
    execute "normal "
\       .":1,$y\<CR>"
\       .":new\<CR>"
\       ."p\<ESC>"
\       .l:cmd."\<CR>"
endfunction

:map <C-L>[ ?^\s*[#]\+\s*.*$<CR>
:map <C-L>] /^\s*[#]\+\s*.*$<CR>
