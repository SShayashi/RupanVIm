function! PlaySE(name)
     silent! exec '!afplay ~/rupanSounds/' . a:name . '.wav &'
endfunction
autocmd! TextChangedI * call PlaySE('keyboard')
autocmd BufWrite * call PlaySE('title')
