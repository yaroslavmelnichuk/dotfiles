set nocompatible              " be iMproved, required
filetype off                  " required
set guioptions-=T " Remove toolbar
set guioptions-=m " Remove menu
set nocompatible
set number
set ruler
syntax on

colorscheme railscasts_patched


nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y
vmap <C-X> "+x

" Whitespace stuff
 set nowrap
 set smartindent
 set tabstop=4
 set shiftwidth=4
 set softtabstop=4
 set expandtab
 set list listchars=tab:\ \ ,trail:·

" Set encoding
 set encoding=utf-8

" Searching
 set hlsearch
 set incsearch
 set ignorecase
 set smartcase

" Status bar
 set laststatus=2

" File types
" make uses real tabs
au FileType make set noexpandtab


" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}
set ft=ruby

" md, markdown, and mk are markdown and define buffer-local preview
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

au BufRead,BufNewFile *.txt call s:setupWrapping()

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79
au FileType perl set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79
au FileType ruby set softtabstop=2 tabstop=2 shiftwidth=2 textwidth=79

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Show (partial_ command in the status line
set showcmd

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
	"Z Keep Plugin commands between vundle#begin/end.
" pZlugin on GitHub repo

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'Xuyuanp/nerdtree-git-plugin'
call vundle#end()            " required
filetype plugin indent on    " required
map <C-n> :NERDTreeToggle<CR>
