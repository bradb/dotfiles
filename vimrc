call pathogen#infect()
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
syntax on
filetype plugin indent on
set nowrap
autocmd vimenter * if !argc() | NERDTree | endif
set number
let mapleader = ","
noremap <Leader>b :buffers<CR>:buffer<Space>
noremap <Leader>a :Ack<Space>
map <Leader>n :NERDTreeToggle<CR>
set hidden
noremap <c-f> :CtrlPMixed<CR>
noremap <c-g> :noh<CR>
set laststatus=2
set t_ti= t_te=
let g:rubytest_in_quickfix = 0
autocmd FileType qf setlocal wrap linebreak
noremap <Leader>f :NERDTreeFind<CR>
autocmd FileType * set tabstop=2|set shiftwidth=2|set expandtab
autocmd BufRead,BufNewFile *.erb set ft=eruby
autocmd BufRead,BufNewFile *.rb set iskeyword+=?,!
noremap <Leader>r :registers<CR>
noremap <Leader>c :!ruby -c %
set nofoldenable
set statusline=%F[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
" resize current buffer by +/- 5 
" nnoremap <S-Left> :vertical resize -5<cr>
" nnoremap <S-down> :resize +5<cr>
" nnoremap <S-up> :resize -5<cr>
" nnoremap <S-right> :vertical resize +5<cr>
let g:rubytest_cmd_test = "bundle exec ruby %p"
let g:rubytest_cmd_testcase = "bundle exec ruby %p -n '/%c/'"
