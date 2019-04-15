" colorscheme solarized
 
set number relativenumber " hybrid line numbering
 
set showcmd  " show command in bottom bar
 
set cursorline " highlight current line
 
set showmatch  " highlight matching [{()}]
 
set ruler " To show line and column number at cursor

" set makeprg=ci/lint.sh " attempting this https://dmerej.info/blog/post/how-i-lint/

highlight LineNr term=bold cterm=NONE ctermfg=Yellow ctermbg=NONE gui=NONE guifg=Yellow guibg=DarkGrey

" attempt to setup autocomplete
"     " assuming you're using vim-plug: https://github.com/junegunn/vim-plug
call plug#begin('~/.local/share/nvim/site/autoload/plugged/')

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi' " python autocomplete

Plug 'vim-airline/vim-airline' " status bar

Plug 'w0rp/ale' " linting

Plug 'tpope/vim-surround' " bracket completion {} 

Plug 'integralist/vim-mypy' " mypy lint 

call plug#end()

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect


