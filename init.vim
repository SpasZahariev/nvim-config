
" Adds all the settings and plugins that are already in the classic .vimrc
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

" Disable the windows beep sound
set visualbell

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/vim-plug/surround.vim
source $HOME/.config/nvim/vim-plug/ale-rust.vim
source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/navigation/nerdtree.vim
