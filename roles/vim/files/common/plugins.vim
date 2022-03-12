""""""""""""""""""""""""""""" Plugins """""""""""""""""""""""""""""""""""
" For easier autocomplete
"Plug ''
"
" Class outline viewer, to be used in conjunction with universal-tags
" https://github.com/preservim/tagbar
" https://github.com/universal-ctags/ctags - install for appropriate os.
Plug 'preservim/tagbar'

" File finder for vim
Plug 'ctrlpvim/ctrlp.vim'

" File system explorer
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Git
Plug 'tpope/vim-fugitive'

" Nerd commenter
Plug 'preservim/nerdcommenter'

"  Provides a much simpler way to use some motions in vim.
Plug 'easymotion/vim-easymotion'

" Allows to edit multiple words at the same time. Great for refactoring!
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Cleanup whitespace
" Usage - type :StripWhitespace
Plug 'ntpeters/vim-better-whitespace'

" Airblade git-gutter Git plugin.
" A Vim plugin which shows a git diff in the 'gutter' (sign column)
Plug 'airblade/vim-gitgutter'

" Golang Support
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}

" Linting
Plug 'dense-analysis/ale'

" Terraform Support
Plug 'hashivim/vim-terraform'

" Conqueror of Completion (or CoC) it's a very big vim plugin that brings
" Language Server Protocol over to vim. https://github.com/neoclide/coc.nvim#example-vim-configuration
" Intellisense, must have Node installed
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax highlighting - vim has pretty decent syntax highlighting out of the
" box. But with hundres of possble languages there is room for improvement.
Plug 'sheerun/vim-polyglot'

" Plugins to be able to open file in github
Plug 'tyru/open-browser.vim'
Plug 'tyru/open-browser-github.vim'

"""""""""""""""""""""""""" colorschemes """"""""""""""""""""""""""""""
" name: afterglow
Plug 'danilo-augusto/vim-afterglow'
" name: molokai
Plug 'tomasr/molokai'
" name: codedark
Plug 'tomasiser/vim-code-dark'
" name: brogrammer
Plug 'marciomazza/vim-brogrammer-theme'
