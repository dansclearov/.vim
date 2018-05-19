nnoremap <buffer> <CR> <C-]> " jump to the subject under the cursor
nnoremap <buffer> <BS> <C-T> " return from the last jump
nnoremap <buffer> o /'\l\{2,\}'<CR> " next subject
nnoremap <buffer> O ?'\l\{2,\}'<CR> " previous subject
nnoremap <buffer> s /\|\zs\S\+\ze\|<CR> " next option
nnoremap <buffer> S ?\|\zs\S\+\ze\|<CR> " previous option
