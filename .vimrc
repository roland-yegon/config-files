" Load Vim's sane defaults first (this is skipped once a vimrc exists)
source $VIMRUNTIME/defaults.vim

" --- Basics ---
set encoding=utf-8
set hidden                    " switch buffers without saving first
set clipboard=unnamedplus     " yank/paste uses the system clipboard
set number                    " line numbers
set norelativenumber          " absolute line numbers only
set mouse=a                   " mouse works everywhere
set scrolloff=8               " keep 8 lines of context around the cursor
set updatetime=300            " snappier updates

" --- Indentation ---
set expandtab                 " tabs become spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

" Go is a tabs-only religion (gofmt says so)
autocmd FileType go setlocal noexpandtab tabstop=4 shiftwidth=4

" --- Search ---
set ignorecase                " case-insensitive search...
set smartcase                 " ...unless you type a capital letter
set incsearch                 " highlight matches as you type
set hlsearch                  " keep matches highlighted

" --- UI ---
syntax on
filetype plugin indent on
set cursorline                " highlight the current line
set showcmd
set wildmenu                  " better command-line completion
set splitbelow splitright     " splits open where you'd expect
set wrap                      " soft-wrap long lines
set linebreak                 " wrap at word boundaries, not mid-word
set breakindent               " wrapped lines keep their indentation
set background=dark
set termguicolors             " true color, if your terminal supports it

" Clear search highlight with Ctrl+L (also redraws the screen)
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>

"" --- Theme ---
augroup transparent_bg
  autocmd!
  autocmd ColorScheme * highlight Normal       guibg=NONE ctermbg=NONE
  autocmd ColorScheme * highlight NonText      guibg=NONE ctermbg=NONE
  autocmd ColorScheme * highlight EndOfBuffer  guibg=NONE ctermbg=NONE
  autocmd ColorScheme * highlight SignColumn   guibg=NONE ctermbg=NONE
  autocmd ColorScheme * highlight LineNr       guibg=NONE ctermbg=NONE
augroup END

colorscheme catppuccin_mocha

" --- Undo, swap and backup (kept out of your project folders) ---
set undofile
set undodir=~/.vim/undo//
set directory=~/.vim/swap//
set backupdir=~/.vim/backup//
set backup
set autoread                  " reload files changed outside Vim

" --- Key mappings ---
let mapleader = " "           " Space is the leader key

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Buffer navigation
nnoremap <leader>n :bnext<CR>
nnoremap <leader>p :bprevious<CR>
nnoremap <leader>d :bdelete<CR>

" Y yanks to end of line, like D and C do
nnoremap Y y$

" j/k and arrows move by visual line when wrapped; counts like 5j use real lines
nnoremap <expr> j v:count == 0 ? 'gj' : 'j'
nnoremap <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> <Down> v:count == 0 ? 'gj' : 'j'
nnoremap <expr> <Up> v:count == 0 ? 'gk' : 'k'
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Keep the selection after indenting in visual mode
vnoremap < <gv
vnoremap > >gv

" Move selected lines up/down with J and K
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Quick split navigation (no <C-l>, it clears search highlight above)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" --- Status line (lightline) ---
set laststatus=2              " always show the status line
set noshowmode                " lightline already shows the mode
let g:lightline = { 'colorscheme': 'catppuccin_mocha' }

" --- File explorer (netrw) ---
let g:netrw_banner = 0        " hide the banner
let g:netrw_liststyle = 3     " tree view
let g:netrw_winsize = 25      " explorer takes 25% of the width
nnoremap <leader>e :Lexplore<CR>

" --- Fuzzy finding (fzf) ---
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>h :History<CR>

" --- Completion (language servers + words from open files, no AI) ---
set completeopt=menuone,noinsert,noselect   " popup never inserts anything until YOU pick
set shortmess+=c

" Tab / Shift+Tab move through the popup
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Word suggestions from all open buffers
autocmd User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
    \ 'name': 'buffer',
    \ 'allowlist': ['*'],
    \ 'completor': function('asyncomplete#sources#buffer#completor'),
    \ }))

" --- Snippets (vsnip + friendly-snippets) ---
" Ctrl+J expands a snippet / jumps to the next field, Ctrl+K jumps back
imap <expr> <C-j> vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-j>'
smap <expr> <C-j> vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-j>'
imap <expr> <C-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<C-k>'
smap <expr> <C-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<C-k>'

" --- LSP (diagnostics = your linting) ---
let g:lsp_diagnostics_echo_cursor = 1        " show the error text when the cursor is on it
let g:lsp_diagnostics_virtual_text_enabled = 0

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    nmap <buffer> gd         <plug>(lsp-definition)
    nmap <buffer> gr         <plug>(lsp-references)
    nmap <buffer> gi         <plug>(lsp-implementation)
    nmap <buffer> K          <plug>(lsp-hover)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> <leader>ca <plug>(lsp-code-action)
    nmap <buffer> <leader>F  <plug>(lsp-document-format)
    nmap <buffer> [d         <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]d         <plug>(lsp-next-diagnostic)
endfunction

augroup lsp_install
    autocmd!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

" --- Auto pairs ---
let g:AutoPairsFlyMode = 0
autocmd FileType vim let b:AutoPairs = {'(':')', '[':']', '{':'}', "'":"'"}
