" NOTE: This script requires vim-plug.
" See: https://github.com/junegunn/vim-plug

" Install vimplug if needed.
" let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
" if empty(glob(data_dir . '/autoload/plug.vim'))
"   silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'.
" - Avoid using standard Vim directory names like 'plugin'.
call plug#begin(stdpath('data') . '/plugged')
  " Add plugins here, then install by running `:PlugInstall` in vim.
  " Make sure you use single quotes.
  Plug 'godlygeek/tabular'                " Auto Indent
  Plug 'plasticboy/vim-markdown'          " Markdown
  Plug 'sheerun/vim-polyglot'             " Syntax highlighter for many languages
  Plug 'tmux-plugins/vim-tmux'            " tmux
  Plug 'octol/vim-cpp-enhanced-highlight' " C++
  Plug 'preservim/nerdtree'               " file system explorer
  Plug 'neovim/nvim-lspconfig'            " Language Server Protocol
  Plug 'nvim-lua/completion-nvim'         " Auto completion
  Plug 'airblade/vim-gitgutter'           " Add git diffs on side
  Plug 'tpope/vim-fugitive'               " Git utilities
  Plug 'bling/vim-bufferline'             " Display tab info
  " Plug 'luiarthur/tmux.vim'               " For REPL integration while editing.
  Plug 'luiarthur/red.vim'                " My personal colorscheme.
  Plug 'JuliaEditorSupport/julia-vim'     " Needs to be installed for unicode.
  Plug 'luiarthur/repl.vim'              " REPL launcher for vim
  Plug 'luiarthur/vim-map-alt'            " Use <ALT>+{hjkl} to move between windows in any mode
call plug#end() " Initialize plugin system

" set nofoldenable    " disable folding

" ------------------------------------------------------------------------ "
" ----------------------- Other noteworthy plugins ----------------------- "
" ------------------------------------------------------------------------ "
" NOTE: The following two plugins are a good alternative to
" `luiarthur/tmux.vim` for non-tmux users.
" Plug 'luiarthur/repl.vim'               " REPL launcher
" Plug 'luiarthur/vim-map-alt'            " Use <ALT>+{hjkl} to move between windows in any mode
" 
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " fuzzy finder
" Plug 'junegunn/fzf.vim'                              " fuzzy finder
" Plug 'vim-airline/vim-airline'          " status bar
" Plug 'vim-airline/vim-airline-themes'   " themes for status bar 
" Plug 'vim-syntastic/syntastic'          " For vim linters
" Plug 'Vimjas/vim-python-pep8-indent'    " Nicer python indentations
" Plug 'vim-latex/vim-latex'              " LaTeX -- causes issues with line feeder.
" Plug 'matze/vim-lilypond'               " lilypond
" Plug 'davidhalter/jedi-vim'             " Python autocomplete
" Plug 'vim-pandoc/vim-pandoc-syntax'     " pandoc
" Plug 'vim-pandoc/vim-pandoc'            " pandoc
" Plug 'luiarthur/kotlin-vim'             " Kotlin
" Plug 'luiarthur/stan.vim'               " STAN modeling
" Plug 'luiarthur/bayes.vim'              " bayes. My thing.
