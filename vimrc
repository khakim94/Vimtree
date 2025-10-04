source $VIMRUNTIME/vimrc_example.vim

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

call plug#end()

syntax on 
set background=light
set termguicolors
colorscheme solarized


au GUIEnter * simalt ~x
set hls
set is
set cb=unnamed
set gfn=JetBrains_Mono:h11
set ts=2
set sw=2
set si
set number
set autoindent
set smartindent
cd C:\Users\Admln\Documents\CP

inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
inoremap ( ()<Left>
inoremap ) <Right>
inoremap )) )
inoremap [ []<Left>
inoremap ] <Right>
inoremap ]] ]
inoremap " ""<Left>
inoremap ' ''<Left>

augroup cpp_template
	autocmd!
	autocmd BufNewFile *.cpp 0r C:/Users/Admln/Documents/CP/template/template.cpp 
augroup END

nnoremap <F5> :w<CR>:!g++ "%:p" -o "%:p:r" && "%:p:r"<CR>

augroup MyBanner
	autocmd!
	autocmd VimEnter * if argc() == 0 | silent! 0r ~/.vim/banner.txt | setlocal buftype=nofile bufhidden=wipe noswapfile | endif
augroup END
