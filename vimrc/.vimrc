let $MYWEB="/Applications/XAMPP/htdocs"

"文件格式设定为utf-8
set fileencodings=utf-8
set encoding=utf-8
set termencoding=utf-8

"默认风格
"colorscheme doriath

"打开文件类型检测，taglist使用
filetype on

filetype plugin on

"设置背景透明
"set transparency=2

"设定ctags路径
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

"语法高亮
syntax enable

"显示行数
set nu

"版式
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"自动缩进
set ai

"智能缩进
set si

"搜索高亮
set hlsearch

"修改后立即生效
autocmd! bufwritepost .vimrc source ~/.vimrc

let g:ctags_path='/usr/local/bin/ctags'
let g:ctags_statusline=1

"php语法检测
map <C-J> :!php -l %<CR>

" 将指定文件的换行符转换成 UNIX 格式,使用jquery插件
if has("autocmd")
    au FileType php,javascript,html,css,python,vim,vimwiki set ff=unix
    au FileType php,javascript,html,css,python,vim,vimwiki set bin noeol
    au BufRead,BufNewFile *.log setf httplog
endif

"neocompletecache
let g:NeoComplCache_DisableAutoComplete=1
let g:SuperTabDefaultCompletionType='<C-X><C-U>'

"保存文件上次位置
autocmd BufReadPost *
            \ if line("'\"") > 1 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif