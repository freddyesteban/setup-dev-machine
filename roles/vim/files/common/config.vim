" ############################################################################################
" ################################ General Vim Settings ######################################
" ############################################################################################

" Necesary for lots of cool vim things
set nocompatible

" show line numbers
set number

" Show cursor position
set ruler

" default number of visual spaces per tab
set tabstop=4

" default number of spaces in tab when editing
set softtabstop=4

" tabs are spaces
set expandtab

" On <TAB> key presses inserts indentation according to 'shiftwidth' at the beginning of the
" line, whereas 'tabstop' and 'softtabstop' are used elsewhere.
set smarttab

" Always display the status line
set laststatus=2

" Enable Elite mode, No ARRRROWWS!!!!
let g:elite_mode=1

" Ensure backticks or other concealing does not happen, e.g. markdown backtics
" or json back ticks will now be visible.
set conceallevel=0

" Set termguicolors if in gvim, macvim, etc.
if (has("termguicolors"))
  set termguicolors
endif

" No error bells
set noerrorbells
set belloff=esc

" show command in bottom bar
set showcmd

" load filetype-specific indent files
filetype indent on

" visual autocomplete for command menu
set wildmenu

" redraw only when we need to
set lazyredraw

" highlight matching [{()}]
set showmatch

" Don't automatically wrap on load. Wrapping sucks, except on markdown. Another option handles markdown below
set nowrap

" Useful for formatting text to the textwidth, highlight text to format with v and press gq
au BufRead,BufNewFile *.md setlocal wrap

" Don't automatically wrap text when typing
set fo-=t

" Shows line where line wraps
set colorcolumn=95

" Do not highlight column (speeds up highlighting)
set nocursorcolumn

" Highlight line where cursor is located
set cursorline

" Automatically read changed files
set autoread

""""""""""""""""""""""""""""""""""""""" Searching """"""""""""""""""""""""""""""""""""""""""""
" It will move the highlight as you add characters to the search string
set incsearch

" Highlight matches
set hlsearch

" By default, searching is case sensitive (searching for 'the' will not find 'The').
" With 'ignorecase' the command '/the' will find 'the' or 'The' or 'THE' etc.
set ignorecase

" If 'ignorecase' is on, you may also wan 'smartcase'. When 'ignorecase' and 'smartcase' are
" both on, if a pattern contains an uppercase letter, it is case sensitive, otherwise, it is not.
set smartcase

" The 'smartcase' option only applies to search patterns that you type; it does not apply to * or # or gd.
" With these mappings, if 'smartcase' is on and you press * while on the word 'The', you will only find
" 'The' (case sensitive), but if you press * while on the word 'the', the search will not be case sensitive.
nnoremap * /\<<C-R>=expand('<cword>')<CR>\><CR>
nnoremap # ?\<<C-R>=expand('<cword>')<CR>\><CR>

" Show number of results of search
set shortmess-=S

"""""""""""""""""""""""""""""""""""""""" Folding """""""""""""""""""""""""""""""""""""""""""""
" enable folding
set foldenable

" open most folds by default
set foldlevelstart=10

" 10 nested fold max
set foldnestmax=10

"""""""""""""""""""""""""""""" Easier moving of code blocks """"""""""""""""""""""""""""""""""
" Better indentation, highlight line with <C-V> first, keep VisualMode after indenting with > or <
vmap < <gv
vmap > >gv

""""""""""""""""""""""""""""""""""" Quicksave command """"""""""""""""""""""""""""""""""""""""
" usage - press leader and s at same time
noremap <leader>s :update<CR>
noremap <leader>S :wa<CR>

"""""""""""""""""""""""""""""""""""" Backup Control """"""""""""""""""""""""""""""""""""""""""
" No backup files (use git)
set nobackup

" controls how vim does backups
set nowritebackup

" Do not use swap files
set noswapfile

"""""""""""""""""""""""""""""""""""""" Encoding """"""""""""""""""""""""""""""""""""""""""""""
scriptencoding utf-8
set encoding=utf-8

"""""""""""""""""""""""""""""""""""""" Mouse """"""""""""""""""""""""""""""""""""""""""""""
" On OSX press ALT and Click
set mouse=a

" make backspace behave like normal again
set bs=2

" Double clikc left mouse to highlight word
map <2-LeftMouse> *

"""""""""""""""""""""""""""""""""""""" Other """"""""""""""""""""""""""""""""""""""""""""""
" Allow copy to clipboard
set clipboard=unnamed,unnamedplus

" Indicate fast terminal conn for faster redraw
set ttyfast

" Makes backspace key more powerful.
set backspace=indent,eol,start

" Prefer Unix over Windows over OS 9 formats
set fileformats=unix,dos,mac

" Highlight Whitespace
au FileType py,pyw,c,h match BadWhitespace /\s\+$/

" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Disable automatically making a comment the new line after pressing enter
" when creating a comment.
set formatoptions-=cro

" Ensure splits are below
set splitbelow

" Ensures multiple pastes are possible when highlighting and pasting
xnoremap p pgvy

""""""""""""""""""""""""""""""""""""" Highlight """"""""""""""""""""""""""""""""""""""""""""""
" highlight last inserted text
nnoremap gV `[v`]

" Change the search color
hi Search guibg=peru guifg=wheat

"""""""""""""""""""""""""""""""" Python Development Settings """""""""""""""""""""""""""""""""
au FileType py setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=95 expandtab smartindent autoindent fileformat=unix

" Fold using indent foldmethod when dealing with python
set foldmethod=indent

" Enable python syntax highlighting features
let python_highlight_all = 1

" Highlight excess line length pas column 80
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%95v.*/
    autocmd FileType python set nowrap
    augroup END

" These setting are meant to comply with PEP8 style.
set shiftround    " round indent to multiple of 'shiftwidth'

"""""""""""""""""""""""""""""""""" Other Development Settings """"""""""""""""""""""""""""""""
" Indentation
au FileType js,html,css,json,tf setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab smartindent autoindent fileformat=unix

"""""""""""""""""""""""""""""""""""""" Navigation """"""""""""""""""""""""""""""""""""""""""""
" To use `ALT+{h,j,k,l}` to navigate windows from any mode:
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Page Up
nnoremap <c-d> <PageUp>

" Page Down
nnoremap <c-b> <PageDown>

map bn :bn<cr>
map bp :bp<cr>
map bd :bd<cr>

"""""""""""""""""""""""""""""""""" Auto Wrapping """""""""""""""""""""""""""""""""""""""""""""
augroup Markdown
  autocmd!
  autocmd FileType markdown set wrap
augroup END

""""""""""""""""""""""""""""""""" Syntax Highlighting """"""""""""""""""""""""""""""""""""""""
" Set syntax highlighting for specific file types
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json
autocmd BufRead,BufNewFile aliases.local,zshrc.local,*/zsh/configs/* set filetype=sh
autocmd BufRead,BufNewFile gitconfig.local set filetype=gitconfig
autocmd BufRead,BufNewFile tmux.conf.local set filetype=tmux
autocmd BufRead,BufNewFile vimrc.local set filetype=vim

""""""""""""""""""""""""""""""""""""""" Font """""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
  if has("gui_macvim")
    set guifont=Monaco:h16
  elseif has("gui_gtk3")
    set guifont=Monospace\ 16
  endif
endif

" ############################################################################################
" ####################################### vim-go #############################################
" ############################################################################################
:set listchars=tab:\|\ 
:set list

let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_function_arguments = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_operators = 1
let g:go_fmt_fail_silently = 1

augroup go
  autocmd!

  " Show by default 4 spaces for a tab
  autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

augroup END

" Go to definition in splits and tabs
au FileType go nmap gs <Plug>(go-def-split)
au FileType go nmap gv <Plug>(go-def-vertical)
au FileType go nmap gt <Plug>(go-def-tab)

" ############################################################################################
" ####################################### ctrlp  #############################################
" ############################################################################################
" Remap to show buffers via ctrlp window
nnoremap <leader>b :CtrlPBuffer<CR>

" ############################################################################################
" ###################################### ack.vim #############################################
" ############################################################################################

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" ############################################################################################
" ################################### vim-terraform ##########################################
" ############################################################################################

" Override indentation to 2 spaces
let g:terraform_align=1

" Format on save
let g:terraform_fmt_on_save=1

" ############################################################################################
" ############################# Conquerer of Completion (CoC) ################################
" ############################################################################################
let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-json',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-cssmodules',
    \ 'coc-emmet',
    \ 'coc-phpls',
    \ 'coc-pyright',
    \ 'coc-pydocstring',
    \ 'coc-diagnostic',
    \ 'coc-go',
    \ 'coc-sql',
    \ 'coc-tailwindcss',
    \ 'coc-markdownlint',
    \ 'coc-webview',
    \ 'coc-markdown-preview-enhanced',
    \ 'coc-yaml'
    \]

" Copied and pasted the following from: https://github.com/neoclide/coc.nvim#example-vim-configuration

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <Ctrl-e><CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <c-e><cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gd <Plug>(coc-definition)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" ############################################################################################
" ####################################### Tagbar #############################################
" ############################################################################################

nmap <leader>t :TagbarToggle<CR>

" ############################################################################################
" ################################### vim-gitgutter ##########################################
" ############################################################################################
" Sets a sign column, instead of hiding the number line and replacing it with
" the symbol
set signcolumn=yes

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

" ############################################################################################
" ################################### Silver Searcher ########################################
" ############################################################################################
" Map grep, vim, vimgrep to use the silver searcher
if executable('ag')
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
endif

" ############################################################################################
" ##################################### Ale Linter ###########################################
" ############################################################################################
let g:ale_linters = {
      \   'python': ['flake8', 'pylint'],
      \   'javascript': ['eslint'],
      \}
nmap <F10> :ALEFix<CR>

" Adds the total number of errors and warnings on the statusline
function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  return l:counts.total == 0 ? '✨ all good ✨' : printf(
        \   '😞 %dW %dE',
        \   all_non_errors,
        \   all_errors
        \)
endfunction

set statusline=
set statusline+=%m
set statusline+=\ %f
set statusline+=%=
set statusline+=\ %{LinterStatus()}

" ############################################################################################
" ####################################### NERDTree ###########################################
" ############################################################################################
nnoremap <C-t> :NERDTreeToggle<CR>

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" ############################################################################################
" ##################################### Colorscheme ##########################################
" ############################################################################################

syntax on
silent! colorscheme molokai
