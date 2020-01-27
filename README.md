### Install and configure vim
Use this [YouCompleteMe's guide to install Vim](https://github.com/ycm-core/YouCompleteMe/wiki/Building-Vim-from-source)

You're going to run `./configure` a few times. Each time remember to run `make distclean` to clean up caches.

Vimrc is the config I use. Based off of [Real Pythons'](https://realpython.com/vim-and-python-a-match-made-in-heaven/) setup. It:
- Setup a pep8 style syntax handling
- Deal with vim in a virtualenv
- Pretty Informative status Bar
- Does code completion useig YouCompleteMe's plugin
- Does code formatting with Black
- etc ..

Try it out. 


