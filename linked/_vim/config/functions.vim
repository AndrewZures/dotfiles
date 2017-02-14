"clean whitespace
nnoremap <leader>w mz:%s/\s\+$//<cr>:let @/=''<cr>`z

"map leader-space to clear (noh)
noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>

" custom copy/paste to clipboard
nmap gfy "+yy
vmap gfy "+y<CR>
nmap gfp "+p<CR>

" custom tab settings
nmap gtn :tabnew<CR>
nmap gtc :tabclose<CR>
nmap gto :tabonly<CR>

"use Ctrl-e to move tabs
nmap <C-e>h :tabp<CR>
nmap <C-e>l :tabn<CR>
nmap <C-e><C-h> :tabp<CR>
nmap <C-e><C-l> :tabn<CR>

"disable standard Ctrl-e actions
nmap <C-e> <nop>

"disable standard Ctrl-w c, which closes current tab
nmap <C-w>c <nop>
nmap <C-w><C-c> <nop>

" custom move-thru settings
nmap gn :cnext<CR>
nmap gp :cprev<CR>
nmap gq :ccl<CR>

" ggrep hotkey
nmap g/ :Ag<space>

" ggrep word under cursor
nmap g. :Ag <C-R><C-W>

" replace word under cursor
nmap g' :%s/<C-R><C-W>/

" format entire file
nmap gfo mzgg=G`z

" pry shortcut
nmap gfl orequire 'pry'; binding.pry;<C-c>

" dash shortcut
nmap gfk :Dash<ENTER>

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

"custom movement to related spec/src file
nmap ga @=Alternative()<CR>

function Alternative()
  let a:current_file = expand("%")
  let a:spec_match = match(a:current_file, "_spec.rb")
  if a:spec_match != -1
    call OpenSrcFile(a:current_file)
  else
    call OpenSpecFile(a:current_file)
  endif
endfunction

function OpenSpecFile(current_file)
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
  else
    echo "no spec file found"
  endif
endfunction

function OpenSrcFile(current_file)
  let a:src_file = substitute(a:current_file, "_spec.rb", ".rb", "")
  let a:src_file = substitute(a:src_file, "spec_no_rails", "app", "")
  let a:src_file = substitute(a:src_file, "spec", "app", "")
  if filereadable(a:src_file)
    exe "vert botright split"
    exe "e ".a:src_file
    exe "normal \<C-W>x"
  else
    echo "no src file found"
  endif
endfunction
