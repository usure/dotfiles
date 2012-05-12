call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax on
filetype plugin on
filetype on
filetype plugin indent on
set ofu=syntaxcomplete#Complete
set foldmethod=indent
set foldlevel=99
set number
au FileType python set omnifunc=pythoncomplete#Complete
nmap <leader>a <Esc>:Ack!
let g:SuperTabDefaultCompletionType = "context"
let g:neocomplcache_enable_at_startup = 1 

set completeopt=menuone,longest,preview

nmap <F9> :NERDTreeToggle<CR>



