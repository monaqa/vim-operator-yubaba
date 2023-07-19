if exists('g:loaded_operator_yubaba') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults

nnoremap <Plug>(operator-yubaba) <Cmd>set opfunc=operator_yubaba#opfunc<CR>g@

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

let g:loaded_operator_yubaba = 1
