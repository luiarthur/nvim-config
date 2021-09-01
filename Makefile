SHELL := /bin/bash

NVIM_HOME = $(HOME)/.config/nvim

all: install

# Print message
message:
	@echo
	@echo Before moving on, please do the following:
	@echo "    1. Ensure that the latest version of neovim is installed."
	@echo "    2. Review the notes for installing language servers in \`src/modules/lsp_config.vim\`."
	@echo "       Note that for convenience, commands are provided for installing"
	@echo "       language server protocols (LSPs) for Julia, Python, and R."
	@echo "       For best user experience, use the latest version of each program."
	@echo "    3. To install plugins, start neovim (via \`$$ nvim\`) and install the plugins using \`:PlugInstall\`."
	@echo

# Install creating symlink.
install: message
	ln -s $(PWD)/src/ $(NVIM_HOME)

# Install by copying config files.
install-copy: message
	cp -r $(PWD)/src/ $(NVIM_HOME)

# Install all language server protocols (LSPs). Currently, only for Julia,
# Python, and R.
install-all-lsp: install-pyright install-julia-lsp install-r-language-server

install-pyright:
	npm i -g pyright

install-julia-lsp:
	julia --project=~/.julia/environments/nvim-lspconfig -e 'using Pkg; Pkg.add("LanguageServer")'

install-r-language-server:
	R -e "install.packages("languageserver")
