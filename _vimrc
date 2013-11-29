" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

colorscheme molokai
syntax on
nnoremap <silent> ,ha :HighlightCurrentLine Search<cr>
nnoremap <silent> ,hb :HighlightCurrentLine DiffAdd<cr>
nnoremap <silent> ,hc :HighlightCurrentLine Error<cr>
command! -nargs=1 HighlightCurrentLine execute 'match <args> /<bslash>%'.line('.').'l/'
nnoremap <silent> ,H :UnHighlightCurrentLine<cr>
command! -nargs=0 UnHighlightCurrentLine match

set number
set incsearch
set ignorecase
set wildmenu wildmode=list:full

" Tab window shift 15char
nmap <silent> <Tab> 15<Right>
vmap <silent> <Tab> <C-a>15<Right>
nmap <silent> <S-Tab> 15<Left>
vmap <silent> <S-Tab> <C-a>15<Left>

" Switch between files C-n
nmap <silent> <C-n>      :update<CR>:bn<CR>
imap <silent> <C-n> <ESC>:update<CR>:bn<CR>
vmap <silent> <C-n> <ESC>:update<CR>:bn<CR>
cmap <silent> <C-n> <ESC>:update<CR>:bn<CR>

" タブ幅の設定
set noexpandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set cursorline
set cursorcolumn
set autoindent
set clipboard=unnamed,autoselect

" Status Line
set laststatus=2
set statusline=%F%r%h%=
