syntax on
" colorscheme murphy
set nu
set foldmethod=manual
set autoindent smartindent
" let mapleader = " "

nnoremap <space>w :w<cr>
nnoremap <space>q :qa<cr>
inoremap jf <esc>
cnoremap jf <c-c>

" 让当前窗口纵向最大化
noremap ff <C-W>_
" " 增加、减少一行窗口高度
noremap f+ <C-W>+
noremap f- <C-W>-
" " 增加、减少一列窗口宽度，纵向切分多个窗口时有效
noremap f< <C-W><
noremap f> <C-W>>
" " 使所有窗口等大
noremap f= <C-W>=
" " 在当前 tab 内关闭其他窗口，只保留当前的
noremap fo <C-W>o
" " 下一个，上一个窗口
noremap fn <C-W>w
noremap fp <C-W>W

" 光标进入 上、下、左、右 的窗口
noremap <silent> fk <C-W>k
noremap <silent> fj <C-W>j
noremap <silent> fh <C-W>h
noremap <silent> fl <C-W>l

" close current tab
noremap <silent> tc :tabclose<CR>
" keep current tab and close other tabs
noremap <silent> to :tabonly<CR>
noremap <silent> tp :tabprevious<CR>
noremap <silent> tn :tabnext<CR>

nnoremap <space>b :buffers<cr>:b<space>
noremap <silent> bn :bn<CR>
noremap <silent> bp :bp<CR>

set laststatus=2
set statusline=%F
