" Ergo alias.
map <S-f> <C-w>

" NeoVIM stuff
set laststatus=0 ruler " Hides the status bar. The airline plugin seems to ignore this.
set splitbelow  " vertical splits create windows below by default.
set splitright  " horizontal splits create window to the right by default.
set mouse=a  " enable copy / paste using mouse, while in vim.

" Tab / buffer navigation.
map <S-Right> :tabnext<CR>
map <S-Left> :tabprevious<CR>
map <S-Down> :bnext<CR>
map <S-Up> :bprevious<CR>

" Make :q, by default, only deletes buffer.
" cnoreabbrev q bd<CR>

" Make :Q, an alias for :qa.
" cnoreabbrev Q qa<CR>

" Basic stuff
set number                  " Show line numbers on side.
syntax enable               " Syntax highlighting
set hlsearch                " Highlight search items
set incsearch               " Highlight search items as you type
set showmatch               " Show matches for parenthesis, etc.
set expandtab               " Use softtabs
set tabstop=2 shiftwidth=2  " Set tab width
set autoindent              " Automaticall indent lines
set nobackup                " Don't create .swp
set clipboard=unnamedplus   " copy and paste to clipboard.
set guicursor=a:blinkon0    " disable cursor blinking
autocmd TermOpen * setlocal nonumber norelativenumber " Don't use line numbers in terminal
" autocmd TermOpen * startinsert " Enter insert mode when terminal opens.

" Set color scheme
try
    colorscheme redmagick
endtry

" Use Escape key to leave terminal insert mode.
tnoremap <Esc> <C-\><C-n>

" Indenting / unindenting in visual mode
vmap < <gv  
vmap > >gv
vmap <s-tab> <gv
vmap <tab> >gv

" disable F1 for help
nmap <F1> <nop>

" Toggle folding with F9. 
set foldmethod=manual " enables folding by visual selection select
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

" Remap 'Ctrl + [' to 'Esc'
imap <C-[> <Esc>

" Reset syntax highlight
noremap <F10> <Esc>:syntax sync fromstart<CR>
inoremap <F10> <C-o>:syntax sync fromstart<CR>

" Return to last position
augroup return_cursor_to_last_position
    autocmd!
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" Save and Load session.
function! SaveSession()
  exec "mksession! ~/.session.vim"
endfunction
function! LoadSession()
  exec "so ~/.session.vim"
endfunction
command -nargs=0 SaveSession :call SaveSession()
command -nargs=0 LoadSession :call LoadSession()

" Always open new files as tabs.
" NOTE: tabs can be close with `:bd`.
augroup open-tabs
    au!
    au VimEnter * ++nested if !&diff | tab all | tabfirst | endif
augroup end
