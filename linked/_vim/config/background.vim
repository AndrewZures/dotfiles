function! SpecialMix()
let g:solarized_termcolors=257
call SolarizedDark()
call MakeLight()
endfunction

function! SolarizedLight()
  let g:solarized_termcolors=256
  let g:solarized_visibility = "high"
  colorscheme solarized
  call MakeLight()
endfunction

function! SolarizedDark()
  let g:solarized_termcolors=256
  let g:solarized_visibility = "high"
  let g:solarized_contrast = "high"
  colorscheme solarized
  call MakeDark()
  call ClearBackground()
endfunction

function! TomorrowNight()
  colorscheme Tomorrow-Night
  call MakeDark()
  call ClearBackground()
endfunction

function! ClearBackground()
  exe 'hi Normal ctermbg=NONE'
endfunction

function! MakeLight()
  exe ':set background=light'
endfunction

function! MakeDark()
  exe ':set background=dark'
endfunction

function! SetBackground()
  call SpecialMix()
endfunction

call SetBackground()
