# dotfiles
config files

## Configuring Vim

### Building Vim

Install build dependencies

`$ sudo apt-get build-dep vim`

Clone git repo

`$ git clone https://github.com/vim/vim.git`

Change to src directory

`$ cd vim/src`

Remove files from previous compilation (skip if compiling for the first time)

`$ sudo make distclean`

Path to install vim (optional. omit --prefix option in next step if not set)

`export PREFIX='/path/to/vim/install'`

Configure with required options (`$ configure --help` for other config. options)
~~~
$ ./configure --with-features=huge \
            --enable-gui=auto
~~~

Compile

`$ make`

Run tests

`$ make test`

Install (may need to use `sudo` if you don't have write permission in `$PREFIX`)

`$ make install`

Make default editor/vim/vi/gvim

~~~
$ sudo sh -c "update-alternatives --install /usr/bin/editor editor $PREFIX/bin/vim 1;
update-alternatives --set editor $PREFIX/bin/vim;
update-alternatives --install /usr/bin/vim vim $PREFIX/bin/vim 1;
update-alternatives --set vim $PREFIX/bin/vim;
update-alternatives --install /usr/bin/vi vi $PREFIX/bin/vim 1;
update-alternatives --set vi $PREFIX/bin/vim;
update-alternatives --install /usr/bin/gvim gvim $PREFIX/bin/gvim 1;
update-alternatives --set gvim $PREFIX/bin/gvim"
~~~

### Configuring coc

Follow instructions [here](https://github.com/neoclide/coc.nvim) to install nodejs

coc-clangd for c and c++ [here](https://github.com/clangd/coc-clangd)

coc-rust-analyzer for rust [here](https://github.com/fannheyward/coc-rust-analyzer)




