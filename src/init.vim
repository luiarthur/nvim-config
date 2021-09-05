" Author: Arthur Lui
" Date: 31 Aug, 2021

source <sfile>:h/modules/basic_setup.vim
source <sfile>:h/modules/smart_tab_completion.vim

" Custom modules to be loaded before plugins. Ignored by git.
try
  source <sfile>:h/modules/custom_before.vim
catch /^Vim\%((\a\+)\)\=:E484/
endtry

" Source plugins.
source <sfile>:h/modules/vim_plugs.vim

" Custom modules to be loaded after plugins. Ignored by git.
try
  source <sfile>:h/modules/custom_after.vim
catch /^Vim\%((\a\+)\)\=:E484/
endtry

source <sfile>:h/modules/lsp_config.vim
source <sfile>:h/modules/markdown.vim
source <sfile>:h/modules/plugs_extend.vim
