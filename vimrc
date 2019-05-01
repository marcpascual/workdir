" drop in ~/.vimrc

execute pathogen#infect()
filetype plugin indent on
syntax on

" enable line numbers
set nu

" do smart indenting when starting a new line
" this might be a problem when pasting comments
" disable if it becomes an annoyance
set smartindent

" number of spaces used for each step of autoindent
set shiftwidth=2

" sets the number of spaces that a <tab> in a line accounts for
set tabstop=2

" use the appropriate number of spaces to expand a tab in insert mode
set expandtab

if &diff                                    " only for diff mode/vimdiff
  set diffopt=filler,context:1000000        " filler is default and inserts empty lines for sync
endif

" proper paste indents
set paste

" highlight extra white spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
