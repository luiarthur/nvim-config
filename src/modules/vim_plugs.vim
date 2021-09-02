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
  " Plug 'vim-airline/vim-airline'          " Learn status bar
  " Plugin 'gmarik/Vundle.vim'                " Vim
  " Plugin 'derekwyatt/vim-scala'             " Scala
  " Plugin 'fatih/vim-go'                     " Go-lang
  " Plugin 'luiarthur/kotlin-vim'             " Kotlin
  " Plugin 'tfnico/vim-gradle'                " Gradle
  " Plugin 'vim-syntastic/syntastic'          " For vim linters
  " Plugin 'Vimjas/vim-python-pep8-indent'    " Nicer python indentations
  " Plugin 'vim-latex/vim-latex'              " LaTeX -- causes issues with line feeder.
  " Plugin 'luiarthur/stan.vim'               " STAN modeling
  " Plugin 'rust-lang/rust.vim'               " Rust
  " Plugin 'luiarthur/bayes.vim'              " bayes. My thing.
  " Plugin 'matze/vim-lilypond'               " lilypond
  " Plugin 'davidhalter/jedi-vim'            " Python autocomplete
  " Plugin 'vim-pandoc/vim-pandoc-syntax'    " pandoc
  " Plugin 'vim-pandoc/vim-pandoc'           " pandoc
  " set nofoldenable    " disable folding
" Initialize plugin system
call plug#end()

