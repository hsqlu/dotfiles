set nocompatible              " be iMproved, required
filetype off                  " required set rtp+=~/.vim/bundle/Vundle.vim call vundle#begin() 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" 插件列表开始
Plugin 'VundleVim/Vundle.vim'         

Plugin 'arcticicestudio/nord-vim'
Plugin 'vim-airline/vim-airline'

" NERTTree & Commenter
Plugin 'preservim/nerdtree'
Plugin 'preservim/nerdcommenter'

Plugin 'Valloric/YouCompleteMe'        " YCM auto completion
Plugin 'fatih/vim-go'                  " go plugin
Plugin 'racer-rust/vim-racer'          " 插件列表1
Plugin 'rust-lang/rust.vim'            " 插件列表1

call vundle#end()            " required
filetype plugin indent on    " required


" 开启rust的自动reformat的功能
let g:rustfmt_autosave = 1
set hidden
let g:racer_cmd = "/Users/qiannan/.cargo/bin/racer"
let $RUST_SRC_PATH=$RUST_SRC_PATH
let g:ycm_rust_src_path = $RUST_SRC_PATH

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
set expandtab       " expand tab to space

" editor settings
set history=1000
set nocompatible
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed                "
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
" set relativenumber

" colorscheme settings
" set termguicolors
" set background=dark
colorscheme nord

"""""""""""""""""""""""""""""""""""""""""""""""
" go-vim
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree configuration begin
" Key mapping
map <C-n> :NERDTreeToggle<CR>

" open a NERDTree automatically when vim starts up
autocmd VimEnter * NERDTree
" wincmd w
autocmd VimEnter * wincmd w

" 开启Nerdtree时自动显示Bookmarks
" let NERDTreeShowBookmarks=1

" 打开vim时如果没有文件自动打开NERDTree
autocmd VimEnter * if !argc()|NERDTree|endif
" 当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" 设置树的显示图标
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" let NERDTreeIgnore = ['\.pyc$']       " 过滤所有.pyc文件不显示
" let g:NERDTreeShowLineNumbers=1       " 是否显示行号
" let g:NERDTreeHidden=0                " 不显示隐藏文件

" Making it prettier
" let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" NERDTree configuration end
"""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""
" Navigate between windows

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
"""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""
" Key mapping -- Go
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)

au FileType go nmap <C-]> <Plug>(go-def)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

" Key mapping -- Rust
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)
au FileType rust nmap <C-]> <Plug>(rust-def)

" Shift+HJKL快速移动
" vnoremap K 5<up>
" vnoremap J 5<down>
" vnoremap H 0
" vnoremap L $
"""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""
" NERD Commenter configuration begin
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
" let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a
" region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
" NERD Commenter configuration end
"""""""""""""""""""""""""""""""""""""""""""""""
