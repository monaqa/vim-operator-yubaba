function operator_yubaba#opfunc(type) abort
  let sel_save = &selection
  set selection=inclusive
  let m_reg = @m

  if a:type == 'line'
    normal! '[V']"my
  else
    normal! `[v`]"my
  endif

  let content = @m
  let chars = str2list(content)
  if !empty(chars)
    let pickup_idx = rand(srand(1)) % len(chars)
    let char = nr2char(chars[pickup_idx])
    let @m = char
    normal! gv"mp
  endif

  let &selection = sel_save
  let @m = m_reg
endfunction
