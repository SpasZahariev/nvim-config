
call plug#begin('~/.config/nvim/autoload/plugged')
	" Better syntax support
	Plug 'sheerun/vim-polyglot'
	" File Explorer
	Plug 'scrooloose/NERDTree'
	" Auto pairs for '{' '[' '('
	Plug 'jiangmiao/auto-pairs'
	" Themes
	Plug 'joshdick/onedark.vim'
	Plug 'kaicataldo/material.vim'
	" Intelisense
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Commenting
	Plug 'preservim/nerdcommenter'
	filetype plugin on
	" Status line
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	" Rust pluggins
	Plug 'rust-lang/rust.vim'
	Plug 'dense-analysis/ale'
	"Telescope fuzzy finder
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-telescope/telescope-fzy-native.nvim'

call plug#end()

" Autoinstall missing pluggins on startup
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
