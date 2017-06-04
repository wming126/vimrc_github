"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Desc: 
"       This is myself vim config file.   
"
" Version: 
"       v1.0
" 
" email"
"       wming126@126.com
"
" Sections:
"    -> For () {} <> []
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => For () {} <> []
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" inoremap ( ()<ESC>i
" inoremap [ []<ESC>i
" inoremap { {}<ESC>i
" inoremap < <><ESC>i

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Display line num and current line higlight
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Display line num wming add
set nu
" High current line wming add
set cursorline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Set encoding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set utf8 as standard encoding and en_US as the standard language
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreejjjinPos = "left"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=28 "wming change
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tag bar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_ctags_bin='ctags'          "ctags程序的路径
let g:tagbar_width=30                   "窗口宽度的设置
nmap <F2> :TagbarToggle<CR>
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()  "如果是c语言的程序的话，tagbar自动开启

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>  Vim Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1

