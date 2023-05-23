" Syntax, colors and highlighting: https://mediatemple.net/community/products/dv/204644480/enabling-vi-syntax-colors-and-highlighting
syntax on
colorscheme desert

" set belloff sourcce: https://stackoverflow.com/questions/18589352/how-to-disable-vim-bells-sounds
set belloff=all
" for bash belloff (i .inputrc), se https://unix.stackexchange.com/questions/73672/how-to-turn-off-the-beep-only-in-bash-tab-complete

" indenting source: https://www.cs.oberlin.edu/~kuperman/help/vim/indenting.html
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set cindent

set t_Co=256

" source: https://www.cs.oberlin.edu/~kuperman/help/vim/indenting.html
" tabstop=8 - tabs are at proper location
" set expandtab - don't use actual tab character (ctrl-v)
" set shiftwidth=4 - indentinng is 4 spaces
" set autoindent - turns it on
" set smartindent - does the right thing (mostly) in programs
" set cindent - stricter rules for C programs