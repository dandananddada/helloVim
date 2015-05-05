
"pathogen for vim plugin"
execute pathogen#infect()

"show number line"
set number

"set syntax heightlight for mac"
syntax on

"set markdown heightlight"
autocmd FileType modula2 set fl=

filetype plugin on

"set corret text indent by syntax"
filetype indent on

"set tab key as two space"
set expandtab
set tabstop=2
set shiftwidth=2

" Display extra whitespace as ."
set  listchars=tab:··,trail:·

colorscheme github

"auto-save, for auto save file update without :w"
let g:auto_save = 1

"tagbar, for file content strut"
let g:tagbar_width=35
let g:tagbar_autofocus=1
nmap <F8> :TagbarToggle<CR>
autocmd VimEnter * nested :call tagbar#autoopen(1)

"nerdtree, for project strut"
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>

"ctrlp, for file search"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

