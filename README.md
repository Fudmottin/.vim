# .vim

Back up your .vim directory before fetching my setup. You don't want to ruin
your customizations.

To clone the `.vim` repository and initialize the submodules, follow these steps:  

cd  
gh repo clone Fudmottin/.vim -- --recurse-submodules  
cd ~/.vim/pack/ycm/start/YouCompleteMe  
./install.py --all

If you don't have the GitHub command line client, it is worth having.  

This markdown provides a clear description of the steps to clone the repository,
initialize submodules, and install the YouCompleteMe plugin.  

You will need llvm (for clangd), cmake, and Python3.

