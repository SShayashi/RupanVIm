nfunction! PlaySE(name)
     silent! exec '!afplay ~/.rupan/' . a:name . '.wav &'
endfunction

autocmd! TextChangedI * silent! execute "!afplay ~/.rupan/keyboard.wav &"
" 保存
autocmd BufWrite * call PlaySE('title')
