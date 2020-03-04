" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
set nu
set cc=80
filetype indent on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
syntax on 
call plug#begin()
Plug 'w0rp/ale'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'majutsushi/tagbar'
""Plug 'valloric/youcompleteme'
   Plug 'autozimu/LanguageClient-neovim', {
          \ 'branch': 'next',
         \ 'do': 'bash install.sh',
          \ }
""Plug 'zchee/deoplete-clang'
Plug 'shougo/deoplete.nvim'
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-surround'
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox
nmap <C-m> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>
set laststatus=2

inoremap " ""<left>
inoremap < < ><left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
let g:ale_lint_on_enter = 1
let b:ale_linters = ['clang']
map <F9> :make all
map <F10> :term

""let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/.ycm_extra_conf.py'

""let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
""let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'
""let g:deoplete#sources#clang#flags = ['-x', 'c', '-std=c99', '-I ~/Skola/DOA/codedb/include']

autocmd CompleteDone * pclose!
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_at_startup = 1
let g:LanguageClient_serverCommands = {
       \ 'c': ['/usr/bin/clangd'],
       \ }

let g:tex_flavor = 'latex'
