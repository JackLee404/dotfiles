" auto run when you run vim
" autocmd VimEnter * NERDTree


" turn on smart tab line in vim
let g:airline#extensions#tabline#enabled = 1

"highlight the line you editing but only active line
"augroup CursorLineOnlyInActiveWindow
"    autocmd!
"    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"    autocmd WinLeave * setlocal nocursorline
"augroup END

" turn syntax on
syntax on
" set not compatility for vi version
set nocompatible
" set ignore case for search
" set ignorecase
" use 4 spaces instead of tabs during formatting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
" show line number and other things
set number
set relativenumber
" set utf8 encode for vim-devicons
set encoding=UTF-8
" make backspace in blank line more intuitive, because you don't need to trans
" to insert mode to delete a line
set backspace=indent,eol,start
" set mouse (scorlling, selection, etc)
set mouse+=a
" set color 256
set t_Co=256

" diy key
let mapleader = ","
" set tagbar key
nnoremap <C-b> :TagbarToggle<CR>
" set NerdTree key
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" set the double search about easymotion
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
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
call plug#end()
