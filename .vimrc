set  rtp+=/usr/lib/python3.5/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

syn on
set nu

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/home/yannis/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('/home/yannis/.vim/dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/neocomplete.vim')

call dein#add('fatih/vim-go')
call dein#add('tpope/vim-fugitive')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

let g:neocomplete#enable_at_startup = 1

colorscheme molokai
