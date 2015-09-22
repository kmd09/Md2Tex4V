" --------------------------------
" Md2Tex4V
"  -------------------------------

function! s:pandoc(cmd)
  let l:proc = vimproc#popen3(a:cmd)
  let l:response = ''
  while !l:proc.stderr.eof
    let l:response .= l:proc.stderr.read()
  endwhile
  echo l:response
endfunction

let s:pandoc_command = "pandoc " . expand("%:r") . ".md -o " . expand("%:r") . ".tex"
command! Md2Tex :call s:pandoc(s:pandoc_command)

function! s:md2pdf()
  call s:pandoc(s:pandoc_command)
  call s:tex2pdf()
endfunction

command! Md2Pdf :call s:md2pdf()

function! s:tex2pdf()
  let l:latexmk_command = "latexmk main.tex"
  let l:proc = vimproc#popen3(l:latexmk_command)
  let l:response = ''
  while !l:proc.stderr.eof
    let l:response .= l:proc.stderr.read()
  endwhile
  echo l:response

  let l:open_preview = "open main.pdf"
  let l:proc = vimproc#popen3(l:open_preview)
endfunction

command! Tex2Pdf :call s:tex2pdf()
