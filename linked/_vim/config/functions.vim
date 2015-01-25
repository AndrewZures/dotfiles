
" custom grep and infile copy
nmap g/ :Ggrep<space>
nmap g. :Ggrep <C-R><C-W>
nmap g' :%s/<C-R><C-W>/

" custom copy/paste to clipboard
nmap ggy "+yy
vmap ggy "+y<CR>
nmap ggp :call SmartPaste()<CR>

" custom tab movement settings
nmap gtn :tabnew<CR>
nmap gtc :tabclose<CR>
nmap gto :tabonly<CR>

" custom Ggrep move-thru settings
nmap gn :cnext<CR>
nmap gp :cprev<CR>
nmap gq :ccl<CR>
