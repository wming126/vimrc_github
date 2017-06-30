"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Desc: 
"       This is myself vim config file.   
"
" Version: 
"       v1.0
" 
" Email:
"       wming126@126.com
"
" Sections:
"    -> For () {} <> []
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" =>  让配置变更立即生效
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufWritePost $MYVIMRC source $MYVIMRC

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => For () {} <> []
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"inoremap ( ()<ESC>i
"inoremap [ []<ESC>i
"inoremap { {}<ESC>i
"inoremap < <><ESC>i

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
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()  "如果是c语言的程序tagbar自动开启

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>  Vim Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" =>  Surport mouse
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a

" =>  For additional vim c++ syntax highlighting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
"let g:cpp_experimental_simple_template_highlight = 1
"let g:cpp_experimental_template_highlight = 1
"let g:cpp_concepts_highlight = 1

" => Some system copy maps  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <Leader>y "+y    "设置快捷键将选中文本块复制至系统剪贴板
nmap <Leader>p "+p        "设置快捷键将系统剪贴板内容粘贴至 vim

" For omnicppcomplete plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set completeopt=menu,menuone  
let OmniCpp_MayCompleteDot=1             "  打开  . 操作符
let OmniCpp_MayCompleteArrow=1           "打开 -> 操作符
let OmniCpp_MayCompleteScope=1           "打开 :: 操作符
let OmniCpp_NamespaceSearch=1            "打开命名空间
let OmniCpp_GlobalScopeSearch=1  
let OmniCpp_DefaultNamespace=["std"]  
let OmniCpp_ShowPrototypeInAbbr=1        "打开显示函数原型
let OmniCpp_SelectFirstItem = 2          "自动弹出时自动跳至第一个


" For ctags create tags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>tt :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> 




