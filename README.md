# nvim-config
My NeoVIM configurations


# Steps for setting up
1. Install NeoVIM.
2. In this directory, execute either
  a. `make install` to create a symlink between the files in `src/` and a
     default `NVIM_HOME`, OR
  b. `make install_by_copy` to copy all files from `src/` to `NVIM_HOME`.
  - Note that you can specify a different `NVIM_HOME` by `make install
    NVIM_HOME=some/other/path`.
3. Enter NeoVIM and execute `:PlugInstall`.


# Updating plugins
The following plugins were simply copied from their source, newer versions may
be available from time to time.
- autoload/plug.vim
- plugin/send_to_split.vim
