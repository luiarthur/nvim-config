" Auto complete settings.
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" Set up language servers here. See the following sites for more info:
" - https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#r_language_server
" - https://github.com/neovim/nvim-lspconfig

" NOTE: I have set: `autostart = false`. In nvim, start lsp server via `:LspStart`.

lua << EOF
-- python
-- NOTE: First run the following: `npm i -g pyright`.
-- Requires the node package manager (npm) to install pyright.
-- Requires type information to work properly. Make sure to use Python 3.8+.
require'lspconfig'.pyright.setup{
    on_attach = function(client)
      require'completion'.on_attach(client)
    end,
    autostart = false
}

-- julia
-- NOTE: First run the following in Julia v1.3+
--    julia --project=~/.julia/environments/nvim-lspconfig -e 'using Pkg; Pkg.add("LanguageServer")'
--    julia --project=~/.julia/environments/nvim-lspconfig -e 'using Pkg; Pkg.instantiate()'
require'lspconfig'.julials.setup{
    on_attach = require'completion'.on_attach,
    autostart = false
}

-- R
-- NOTE: First run `install.packages(languageserver)` in R.
require'lspconfig'.r_language_server.setup{
    on_attach = require'completion'.on_attach,
    autostart = false
}
EOF

" To get function definitions, use `:Define`.
function! LspDefine()
  exec "lua vim.lsp.buf.definition()"
endfunction
command -nargs=0 Define :call LspDefine()
