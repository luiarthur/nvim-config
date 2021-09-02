" This script requires vim-plug.
" See: https://github.com/junegunn/vim-plug

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')
  " Add plugins here, then install by running `:PlugInstall` in vim.
  " Make sure you use single quotes.
  Plug 'tmux-plugins/vim-tmux'            " tmux
  Plug 'godlygeek/tabular'                " Auto Indent
  Plug 'plasticboy/vim-markdown'          " Markdown
  Plug 'octol/vim-cpp-enhanced-highlight' " C++
  Plug 'JuliaEditorSupport/julia-vim'     " julia
  Plug 'preservim/nerdtree'               " file system explorer
  Plug 'neovim/nvim-lspconfig'            " Language Server Protocol
  Plug 'nvim-lua/completion-nvim'         " Auto completion
  Plug 'airblade/vim-gitgutter'           " Add git diffs on side
  Plug 'tpope/vim-fugitive'               " Git utilities
  Plug 'bling/vim-bufferline'             " Display tab info
  " Plug 'vim-airline/vim-airline'          " status bar
  " Plug 'vim-airline/vim-airline-themes'   " themes for status bar 
  " Plug 'gmarik/Vundle.vim'                " Vim
  " Plug 'derekwyatt/vim-scala'             " Scala
  " Plug 'fatih/vim-go'                     " Go-lang
  " Plug 'luiarthur/kotlin-vim'             " Kotlin
  " Plug 'tfnico/vim-gradle'                " Gradle
  " Plug 'vim-syntastic/syntastic'          " For vim linters
  " Plug 'Vimjas/vim-python-pep8-indent'    " Nicer python indentations
  " Plug 'vim-latex/vim-latex'              " LaTeX -- causes issues with line feeder.
  " Plug 'luiarthur/stan.vim'               " STAN modeling
  " Plug 'rust-lang/rust.vim'               " Rust
  " Plug 'luiarthur/bayes.vim'              " bayes. My thing.
  " Plug 'matze/vim-lilypond'               " lilypond
  " Plug 'davidhalter/jedi-vim'            " Python autocomplete
  " Plug 'vim-pandoc/vim-pandoc-syntax'    " pandoc
  " Plug 'vim-pandoc/vim-pandoc'           " pandoc
  " set nofoldenable    " disable folding
" Initialize plugin system
call plug#end()

