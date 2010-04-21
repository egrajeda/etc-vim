syntax on

set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set autoindent

set nowrap

" Identacion
" Las reglas para la identacion estan en su propio archivo en after/
filetype plugin indent on

colorscheme wombat

set guioptions-=aegimrLtT
set shortmess+=I

" Autodetectar filetype de un archivo vacio despues de que el usuario
" presiona el primer <CR>
function! DetectFiletype()
    filetype detect
    iunmap <buffer> <CR>
endfunction
au BufNewFile * imap <buffer> <CR> <CR><C-O>:call DetectFiletype()<CR>

" Maps
" Autocompletar los parentesis/corchetes/etc
inoremap ( ()<ESC>:let leavechar=")"<CR>i
inoremap [ []<ESC>:let leavechar="]"<CR>i
inoremap ' ''<ESC>:let leavechar="'"<CR>i
inoremap " ""<ESC>:let leavechar='"'<CR>i

imap <C-l> <Esc>:exec "normal f" . leavechar <CR>a
