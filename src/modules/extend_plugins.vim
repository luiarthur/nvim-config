" ---------------------------------- LSP shortcuts ----------------------------
nnoremap <F2> :LspStart<CR>
nnoremap <F3> :LspStop<CR>
nnoremap <F4> :LspInfo<CR>

" ---------------------------------- NERDTree Settings ------------------------
" NERDTree Shortcut
nnoremap <C-n> :NERDTreeToggle<CR>

" If another buffer tries to replace NERDTree, put it in the other window, and
" bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' &&
    \ bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" |
    \ execute 'buffer'.buf | endif

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif


" ----------------------------------- Julia highlighting ---------------------
function! JuliaExtendHighligh() abort
  syntax keyword juliaTodo contained NOTE
endfunction
au BufRead *.jl call JuliaExtendHighligh()


" ----------------------------------- Python highlighting --------------------
function! PythonExtendHighligh() abort
  syntax keyword pythonTodo NOTE NOTES contained
endfunction
au BufRead *.py call PythonExtendHighligh()
