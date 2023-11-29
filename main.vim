:set number
set laststatus=2
set nocompatible

set encoding=utf-8

if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif

:inoremap <C-BS> <C-W>

" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

syntax on

filetype on
filetype plugin on

set cursorline
set cursorcolumn

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
map <C-a> ggVG
map <C-c> "+y



noremap <C-/> :normal! I//<CR>

nnoremap <C-z> :undo<CR>

se mouse+=a
