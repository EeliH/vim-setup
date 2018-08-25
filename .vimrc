" Basic stuff
set nocompatible
filetype off
set number

" Plugins via Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " Vundle itself
Plugin 'ajmwagar/vim-deus' " Current colorscheme 
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'Valloric/YouCompleteMe'
Plugin 'lervag/vimtex'
Plugin 'rhysd/vim-clang-format'
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()

" vim-airline settings
let g:airline#extensions#tabline#enabled = 1 " smarter tab line
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" vim-airline-theme
let g:airline_theme='deus'

" YouCompleteMe settings
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 0
let g:airline_exclude_preview = 0

" vim.cpp enhanced highlight settings
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" General settings
filetype plugin indent on
syntax on " Syntax coloring
set cursorline " The line, where cursor is on, is highlighted. 
set backspace=indent,eol,start " Make backspace work in insert mode

" Search settings
set incsearch
set hlsearch

" Color and the scheme
set background=dark 
set termguicolors
colorscheme deus
set t_Co=256

" Tab == 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
