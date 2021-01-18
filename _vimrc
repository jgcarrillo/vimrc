source $HOME/vimfiles/_vimrc

" Stop acting like classic vi
set nocompatible	" disable vi compatibility mode
set history=1000	" increase history size
set noswapfile		" don't create swapfiles
set nobackup		" don't backup, use git!

" Enable filetype
filetype indent plugin on

" Persist undo history between file editing sessions
set undofile
set undodir=$HOME/vimfiles/undodir

" Modify indenting settings
set autoindent		" autoindent always ON

" Modify some other settings about files
set encoding=utf-8
set backspace=indent,eol,start
set hidden

if &t_Co > 2
	syntax on
	silent! colorscheme dim
	set background=dark

	highlight Folded cterm=reverse ctermbg=0 ctermfg=8
	highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=8
	highlight Conceal cterm=NONE ctermbg=NONE ctermfg=8

	highlight DiffAdd ctermfg=green cterm=bold
	highlight DiffDelete ctermfg=red cterm=bold
	highlight DiffChange ctermfg=yellow

	set colorcolumn=80
endif

set noshowmode
set laststatus=1	" always show statusbar
set wildmenu		" enable visual wildmenu

set nowrap		" don't wrap long lines
set number		" show line numbers
set relativenumber	" show numbers as relative by default
set showmatch		" higlight matchin parentheses and brackets

" Shortcuts for switching the buffers
map <C-N> :bnext<CR>
map <C-P> :bprev<CR>
imap <C-N> <Esc>:bnext<CR>i
imap <C-P> <Esc>:bprev<CR>i

let mapleader=","

" Double ESC the terminal to exit terminal-job mode.
tnoremap <Esc><Esc> <C-\><C-n>
