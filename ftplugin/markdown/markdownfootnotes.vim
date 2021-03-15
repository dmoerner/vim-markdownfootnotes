" Maintainer: Daniel Moerner <daniel@moerner.com>
" URL: https://github.com/dmoerner/vim-markdownfootnotes

if exists("b:loaded_footnote_vim") | finish | endif
let b:loaded_footnote_vim = 1

let s:cpo_save = &cpo
set cpo&vim

" Mappings
if !hasmapto('<Plug>AddVimFootnote', 'n') && mapcheck('<Leader>f', 'n') is# ""
    nmap <buffer> <Leader>f <Plug>AddVimFootnote
endif

if !hasmapto('<Plug>ReturnFromFootnote', 'n') && mapcheck('<Leader>r', 'n') is# ''
    nmap <buffer> <Leader>r <Plug>ReturnFromFootnote
endif

if !hasmapto('<Plug>EditVimFootnote', 'n') && mapcheck('<Leader>e', 'n') is# ''
    nmap <buffer> <Leader>e <Plug>EditVimFootnote
endif

nnoremap <buffer> <Plug>AddVimFootnote :<c-u>call markdownfootnotes#VimAddFootnote()<CR>
inoremap <buffer> <Plug>AddVimFootnote <C-O>:<c-u>call markdownfootnotes#VimAddFootnote()<CR>

inoremap <Plug>ReturnFromFootnote <C-O>:<c-u>q<CR><Right>
nnoremap <Plug>ReturnFromFootnote :<c-u>q<CR><Right>

nnoremap <buffer> <Plug>EditVimFootnote :<c-u>call markdownfootnotes#VimEditFootnote()<CR>
inoremap <buffer> <Plug>EditVimFootnote <C-O>:<c-u>call markdownfootnotes#VimEditFootnote()<CR>

" :Footnote commands
command! -buffer -nargs=0 FootnoteNextNumber call markdownfootnotes#GetNextNote()

let &cpo = s:cpo_save
