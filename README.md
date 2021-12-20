# nvim-config
My NeoVIM configurations


# Steps for setting up
1. Install NeoVIM.
2. In this directory, execute either
    - `make install` to create a symlink between the files in `src/` and a
       default `NVIM_HOME`, OR
    - `make install_by_copy` to copy all files from `src/` to `NVIM_HOME`.
    - Note that you can specify a different `NVIM_HOME` by `make install
      NVIM_HOME=some/other/path`.
3. Enter NeoVIM and execute `:PlugInstall`.


# Updating plugins
The following plugins were simply copied from their source, newer versions may
be available from time to time.
- autoload/plug.vim
- plugin/send_to_split.vim

# WSL2

To access the Windows system clipboard in WSL2, follow the instructions here:

- https://github.com/neovim/neovim/issues/12092
- https://github.com/neovim/neovim/wiki/FAQ#:~:text=If%20Neovim%20is%20only%20installed%20within%20our%20WSL%20distribution

This basically invovles installing `win32yank` via:

```bash
curl -sLo/tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
chmod +x /tmp/win32yank.exe
sudo mv /tmp/win32yank.exe /usr/local/bin/
```
