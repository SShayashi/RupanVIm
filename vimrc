nfunction! PlaySE(name)
     silent! exec '!afplay ~/.rupan/' . a:name . '.wav &'
endfunction

autocmd! TextChangedI * call PlaySE('keyboard')
" 保存
autocmd BufWrite * call PlaySE('title')
