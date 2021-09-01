SHELL := /bin/bash

NVIM_HOME = $(HOME)/.config/nvim

all: install

# Install creating symlink.
install:
	ln -s $(PWD)/src/ $(NVIM_HOME)

# Install by copying config files.
install-copy:
	ln -s $(PWD)/src/ $(NVIM_HOME)

