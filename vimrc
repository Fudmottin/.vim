" General settings
let mapleader = " "

set tabstop=3       " A tab is four spaces
set shiftwidth=3    " An indent is four spaces
set expandtab       " Use spaces, not tabs
set autoindent      " Copy indent from current line when starting a new line
set encoding=utf-8  " Required by some plugins (even if not using YCM)
set fileencoding=utf-8
set backspace=indent,eol,start

" Syntax Highlighting
syntax on           " Enable syntax highlighting

" Filetype settings
filetype plugin indent on  " Enable filetype detection and loading

" Specific settings for C and C++
augroup filetype_c_cpp_settings
  autocmd!
  autocmd FileType c,cpp setlocal cindent 
  autocmd FileType c,cpp setlocal cinoptions=g0,i0,+0,(0,u=W
  autocmd FileType c,cpp setlocal expandtab shiftwidth=3 softtabstop=3
augroup END

" Use clang-format as the external formatter for gq command
augroup clang_format_integration
  autocmd!
  " Set formatprg to clang-format with -style=file and pass the filename
  autocmd FileType c,cpp setlocal formatprg=clang-format\ -style=file

  " Optional: map <leader>cf to format the entire buffer
  autocmd FileType c,cpp nnoremap <buffer> <leader>cf ggVGgq<CR>

  " Or simpler: just use gq motion (e.g., ggVGgq or gqip for paragraph)
augroup END

" Statusline
set laststatus=2    " Always show the status line
set statusline=%<%f\ %h%m%r\ Line:\ %l\ Column:\ %c%V\ %P

" Save and restore cursor position for each buffer
augroup res_cursor_position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

