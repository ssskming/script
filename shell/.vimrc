map <F5> :call CompileRunGcc()<CR>
function! CompileRunGcc()
        exec "w"
        if &filetype == 'java'
                exec "!java %"
                exec "!time java %<"
        elseif &filetype == 'sh'
                :!time bash %
        elseif &filetype == 'py'
                exec "!python %"
        endif
endfunction

autocmd BufNewFile *.spec call CompileRunGcc()
