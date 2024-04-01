" -----------------------------------------------------------------------------
"     - Disabling Arrow keys -
" -----------------------------------------------------------------------------
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Up> <Nop>
noremap <Right> <Nop>

" -----------------------------------------------------------------------------
"     - Human error correction -
" -----------------------------------------------------------------------------
:command! W w
:command! Q q
:command! Wq wq
:command! Qa qa

" -----------------------------------------------------------------------------
"     - Leader -
" -----------------------------------------------------------------------------
let g:mapleader="\\"

" -----------------------------------------------------------------------------
"     - Code Editing -
" -----------------------------------------------------------------------------
filetype plugin indent on
syntax on
set clipboard+=unnamedplus
set number
set tabstop=4
set expandtab
set shiftwidth=4
set foldcolumn=auto:2
set foldenable
set foldlevel=6
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

nnoremap <esc> :noh<CR><esc>

" -----------------------------------------------------------------------------
"     - Make Background Transparent -
" -----------------------------------------------------------------------------

colorscheme gruvbox
highlight Normal guibg=none
highlight NonText guibg=none
highlight Normal ctermbg=none
highlight NonText ctermbg=none

" -----------------------------------------------------------------------------
"     - Automatic Formatting -
" -----------------------------------------------------------------------------

augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END

" -----------------------------------------------------------------------------
"     - Markdown Preview -
" -----------------------------------------------------------------------------
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
