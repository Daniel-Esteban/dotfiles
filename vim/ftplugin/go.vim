noremap <leader>t <esc>:GoDef<CR>
noremap <leader>r <esc>:GoRename<CR>
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1
let g:go_auto_sameids = 1
setlocal shiftwidth=4
setlocal tabstop=4
set foldlevel=1

inoremap . .<C-x><C-o>
