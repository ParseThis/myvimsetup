# find vim configure options here http://vimdoc.sourceforge.net/howto/win32-compile/Vim-Compile-Win32-HOWTO/compiling.html
# - cscope https://vim.fandom.com/wiki/Cscope
# - fail-if-missing  https://stackoverflow.com/a/25205057/4356204
# building with python support

# below taken from https://github.com/ycm-core/YouCompleteMe/wiki/Building-Vim-from-source
./configure \
            --with-features=huge \
            --prefix=/usr/local \
            --enable-gui=auto \
            \
            --enable-cscope \ 
            --enable-fail-if-missing \
            --enable-largefile \
            --enable-multibyte \
            \
            --enable-python3interp=dynamic \
            --with-python3-config-dir=$(python3-config --configdir) \
            \
