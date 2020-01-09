set shiftwidth=8
set softtabstop=8
set tabstop=8


highlight Folded ctermbg=DarkGray ctermfg=Green
autocmd Filetype c setlocal foldmethod=syntax ts=4 sw=4 sts=4 expandtab
autocmd Filetype asm setlocal foldmethod=syntax ts=4 sw=4 sts=4 expandtab
autocmd Filetype cpp setlocal foldmethod=syntax ts=4 sw=4 sts=4 expandtab
au FileType python setl foldmethod=index sw=4 sts=4 et
au FileType rust setl foldmethod=syntax sw=4 sts=4 et
autocmd FileType make set noexpandtab

augroup AutoSaveFolds
        autocmd!
        autocmd BufWinLeave ?* mkview
        autocmd BufWinEnter ?* silent loadview
augroup End

autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

set expandtab
set number

syntax on
set scrolloff=5
set autoindent

set laststatus=2

set clipboard=unnamedplus
set wildmode=longest,list,full
set wildmenu
