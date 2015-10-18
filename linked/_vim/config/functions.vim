"clean whitespace
nnoremap <leader>w mz:%s/\s\+$//<cr>:let @/=''<cr>`z

"map leader-space to clear (noh)
noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>

" custom copy/paste to clipboard
nmap ggy "+yy
vmap ggy "+y<CR>
nmap ggp "+p<CR>

" custom tab settings
nmap gtn :tabnew<CR>
nmap gtc :tabclose<CR>
nmap gto :tabonly<CR>
map <C-H> :tabp<CR>
map <C-L> :tabn<CR>

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


"lulz
nmap <C-M>1 @=MoveCurrentWindowToTab(1)<CR>
nmap <C-M>2 @=MoveCurrentWindowToTab(2)<CR>
nmap <C-M>3 @=MoveCurrentWindowToTab(3)<CR>
nmap <C-M>4 @=MoveCurrentWindowToTab(4)<CR>
nmap <C-M>5 @=MoveCurrentWindowToTab(5)<CR>

"moves current window to another (existing) tab
function MoveCurrentWindowToTab(tab_number)
  let a:buffer_number = bufnr('%')
  let a:tab_count = tabpagenr('$')
  if a:tab_number > a:tab_count
    echo "tab doesnt exist"
  else
    close!
    exe a:tab_number."tabn"
    exe "vert botright split"
    exe "b".a:buffer_number
  end
endfunction
