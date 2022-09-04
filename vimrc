" auto run when you run vim
" autocmd VimEnter * NERDTree


" turn on smart tab line in vim
let g:airline#extensions#tabline#enabled = 1
" let the integration with airline
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#nerdtree_statusline = 1
" let g:airline_theme = 'purify'
" for the key bind of <M-e> etc for plug auto-pair
" let g:AutoPairsShortcutToggle = '<C-q>'

"highlight the line you editing but only active line
"augroup CursorLineOnlyInActiveWindow
"    autocmd!
"    autocmd vimenter,winenter,bufwinenter * setlocal cursorline
"    autocmd WinLeave * setlocal nocursorline
"augroup END

" settings for ALE
let g:ale_completion_enabled = 1
" let b:ale_linters = ['flake8', 'pylint', 'clangd', 'cppcheck']
"let g:ale_fixers = {
"\   '*': ['remove_trailing_lines', 'trim_whitespace'],
"\   'javascript': ['eslint'],
    "'python': ['flake8', 'pylint']
    "'c++': ['clangd', 'cppcheck']
"}
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'c++': ['clangd'],
\   'python': ['flake8', 'pylint'],
\}
let b:ale_fixers =  ['autopep8', 'yapf', 'autoflake', 'google_java_format']
let b:ale_warn_about_trailing_whitespace = 0
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰', '│', '─']
let g:ale_floating_window_border = repeat([''], 8)
let g:airline#extensions#ale#enabled = 1
" ALE for Java
let g:ale_java_eclipselsp_path = '$HOME/.vim/support/jdt-lsp'
let g:ale_java_eclipselsp_config_path = '$HOME/.vim/support/jdt-lsp'
let g:ale_java_eclipse_config_path = '$HOME/.vim/support/config_linux'
"let the tmux-line preset
" let g:tmuxline_preset = 'tmux'
" tmuxline theme custom
" let g:tmuxline_theme = 'iceberg'
" set for deopltete
" let g:deoplete#enable_at_startup = 1
let g:AutoPairsShortcutFastWrap = '<C-q>'




" set cursor
"let &t_SI = "\e[6 q"
"let &t_EI = "\e[2 q"
" set filetype
filetype plugin indent on
" set color 256
set t_Co=256
" turn syntax on
syntax enable
"set not compatility for vi version
set nocompatible
" set ignore case for search
" set ignorecase
" set lastline
set laststatus=2
" use 4 spaces instead of tabs during formatting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
" set auto indent
set autoindent
" show command
set showcmd
set wildmenu
" show line number and other things
set number
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
" set utf8 encode for vim-devicons
set encoding=UTF-8
" make backspace in blank line more intuitive, because you don't need to trans
" to insert mode to delete a line
" set backspace=indent,eol,start
" set mouse (scorlling, selection, etc)
set mouse+=a
" set filetype on for commenter plug
filetype plugin on
" make the cursor now smallest to last 5
set scrolloff=5
" disable the default vim start up message
set shortmess+=I
" always show the status line at the buttom
set laststatus=2
" set nerdtree right
" let g:NERDTreeWinPos = "right"
" set indent
set foldmethod=manual
set foldlevelstart=99

" auto compile and run when using c++ file
if &filetype ==# 'cpp'
    nnoremap <silent> <C-s> :w<CR>:!g++ % && ./a.out<CR>:!rm a.out<CR>
endif





" diy key
let mapleader = ","
" set leader key for easy motion
map <Leader> <Plug>(easymotion-prefix)
" set tagbar key
nnoremap <C-b> :TagbarToggle<CR>
" set NerdTree key
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" set the double search about easymotion
nmap ; <Plug>(easymotion-s2)
nmap ' <Plug>(easymotion-t2)
" set the n-character search motion (replace the traditional search)
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
" set the tabline key for moving
nnoremap <C-z> :bprevious<CR> " also bp
nnoremap <C-x> :bnext<CR> " also bn



let g:EasyMotion_startofline = 0 " keep cursor column when JK motion



call plug#begin()
" airline plug for the buttom line more intuitive
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" tag bar which is a tool to show structure of the file you editing
Plug 'preservim/tagbar'
" NerdTree is a plug that show the list of file in tabs and otherthings
Plug 'preservim/nerdtree'
" let index show the information about files you recently edited
Plug 'mhinz/vim-startify'
" Ctrlp which is a tool for fuzzy file,buffer,mru,tag,.. finder for vim
Plug 'ctrlpvim/ctrlp.vim'
" make device icons more beautiful and fix all the plug
Plug 'ryanoasis/vim-devicons'
" moving faster than ever using match (high level for the f command and F etc)
Plug 'easymotion/vim-easymotion'
" Language Client
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'
" for commnter
Plug 'preservim/nerdcommenter'
" auto complete pairs
Plug 'jiangmiao/auto-pairs'
" collection of language packs for vim
Plug 'sheerun/vim-polyglot'
" awesome vim colorscheme
Plug 'rafi/awesome-vim-colorschemes'
" set up ALE
Plug 'dense-analysis/ale'
" set nerdtree-syntax-highlight
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" set auto completion about deoplete
"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
"endif
"Plug 'roxma/vim-hug-neovim-rpc'
"Plug 'roxma/nvim-yarp', { 'do': 'pip install -r requirements.txt' }
"Plug 'litom501/vim-foobar'
"set tmux plugin
"Plug 'edkolev/tmuxline.vim'
call plug#end()


" set solarized color
set background=light
colorscheme purify
