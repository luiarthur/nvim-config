" Clipboard (copy and paste)
set clipboard=unnamedplus

" Copy and paste between vim sessions.
" Copy the current visual selection to ~/.vbuf.
" For servers, uncomment the following lines:
vmap <C-Y> :w! ~/.vbuf<CR>
nmap <C-P> :r ~/.vbuf<CR>
