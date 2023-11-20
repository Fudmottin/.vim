" General settings
set tabstop=4       " A tab is four spaces
set shiftwidth=4    " An indent is four spaces
set expandtab       " Use spaces, not tabs
set autoindent      " Copy indent from current line when starting a new line
set encoding=utf-8  " Required by YouCompleteMe
set fileencoding=utf-8

" Syntax Highlighting
syntax on           " Enable syntax highlighting

" Filetype settings
filetype plugin indent on  " Enable filetype detection and loading

" Specific settings for C and C++
augroup filetype_c_cpp_settings
  autocmd!
  autocmd FileType c,cpp setlocal cindent cinoptions=g0,i0,+0,(0,u=W) expandtab shiftwidth=4 softtabstop=4
augroup END

" Statusline
set laststatus=2    " Always show the status line
set statusline=%<%f\ %h%m%r\ Line:\ %l\ Column:\ %c%V\ %P

" Settings for YouCompleteMe
try
  let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
catch
  echo "YouCompleteMe is not installed or has some issues"
endtry

" Save and restore cursor position for each buffer
augroup res_cursor_position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END
