syntax on

set noerrorbells "This removes vim's default error bell, turning it off so that it doesn't annoy us 
set textwidth=100 "Ensures that each line is not longer than 100 columns 
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent 
set linebreak 
set number
set showmatch 
set showbreak=+++
set smartcase
set noswapfile 
set undodir=~/.vim/undodir
set undofile
set incsearch 
set spell 
set showmatch 
set confirm 
set ruler 
set autochdir 
set autowriteall 
set undolevels=1000
set backspace=indent,eol,start 




" The next two settings ensure that line breaks and wrap work how writers, not
" coders, prefer it

set wrap
nnoremap <F5> :set linebreak<CR>
nnoremap <C-F5> :set nolinebreak<CR>







call plug#begin('~/.vim/plugged')

"   This is for color themes

Plug 'colepeters/spacemacs-theme.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'gruvbox-community/gruvbox'

"   This is a selection of plugins to make prose writing easier. 

Plug 'dpelle/vim-LanguageTool' 
Plug 'ron89/thesaurus_query.vim' 
Plug 'junegunn/goyo.vim' 
Plug 'junegunn/limelight.vim' 
Plug 'reedes/vim-pencil' 
Plug 'reedes/vim-wordy'



" This section are nice-to-haves for easier integration with machine, using vim-airline and such. 

Plug 'vim-airline/vim-airline'

"This section deals with workspace and session management 

Plug 'thaerkh/vim-workspace'

"Related to above, the following code saves all session files in a single directory outside your
"workspace

let g:workspace_session_directory = $HOME . '/.vim/sessions/'


"Related to above, this is a activity tracker for vim

Plug 'wakatime/vim-wakatime'

" A disturbance in the force: we are using some emacs functionality here, org-mode specifically 

Plug 'jceb/vim-orgmode'








"  This is for language-specific plugins 

Plug 'plasticboy/vim-markdown' 


 call plug#end()

colorscheme pacific 
set background=dark 

if executable('rg')
    let g:rg_derive_root='true' 
endif 




