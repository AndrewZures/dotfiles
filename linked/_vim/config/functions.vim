"clean whitespace
nnoremap <leader>w mz:%s/\s\+$//<cr>:let @/=''<cr>`z

"map leader-space to clear (noh)
noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>

" custom copy/paste to clipboard
nmap ggy "+yy
vmap ggy "+y<CR>
" nmap ggp "+p<CR>

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
nmap ggt1 @=MoveCurrentWindowToTab(1)<CR>
nmap ggt2 @=MoveCurrentWindowToTab(2)<CR>
nmap ggt3 @=MoveCurrentWindowToTab(3)<CR>
nmap ggt4 @=MoveCurrentWindowToTab(4)<CR>
nmap ggt5 @=MoveCurrentWindowToTab(5)<CR>

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


function Hello()
  let a:current_file = expand("%")
  let a:spec_file = substitute(a:current_file, "app", "spec", "")
  let a:spec_file = substitute(a:spec_file, ".rb", "_spec.rb", "")
  let a:spec_no_rails_file = substitute(a:current_file, "app", "spec_no_rails", "")
  let a:spec_nr_file = substitute(a:current_file, "app", "spec_no_rails", "")
  let a:spec_nr_file = substitute(a:spec_nr_file, ".rb", "_spec.rb", "")
  if filereadable(a:spec_file)
    exe "vert botright split"
    exe "e ".a:spec_file
  elseif filereadable(a:spec_nr_file)
    exe "vert botright split"
    exe "e ".a:spec_nr_file
  endif
endfunction

function Howdy()
  let a:current_file = expand("%")
  let a:src_file = substitute(a:current_file, "_spec.rb", ".rb", "")
  let a:src_file = substitute(a:src_file, "spec_no_rails", "app", "")
  let a:src_file = substitute(a:src_file, "spec", "app", "")
  if filereadable(a:src_file)
    exe "vert botright split"
    exe "e ".a:src_file
    exe "normal \<C-W>x"
  endif
endfunction
