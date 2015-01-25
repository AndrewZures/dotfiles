"clean whitespace
nnoremap <leader>w mz:%s/\s\+$//<cr>:let @/=''<cr>`z

"map leader-space to clear (noh)
noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>

" custom copy/paste to clipboard
nmap ggy "+yy
vmap ggy "+y<CR>
nmap ggp :call SmartPaste()<CR>

" custom tab settings
nmap gtn :tabnew<CR>
nmap gtc :tabclose<CR>
nmap gto :tabonly<CR>
map <C-J> :tabp<CR>
map <C-K> :tabn<CR>

" custom Ggrep move-thru settings
nmap gn :cnext<CR>
nmap gp :cprev<CR>
nmap gq :ccl<CR>

" ggrep hotkey
nmap g/ :Ggrep<space>

" ggrep word under cursor
nmap g. :Ggrep <C-R><C-W>

" replace word under cursor
nmap g' :%s/<C-R><C-W>/
