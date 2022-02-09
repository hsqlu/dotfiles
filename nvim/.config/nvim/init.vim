set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
" ~/.vimrc 表示: C:\Users\<user>\.vimrc，此处的.vimrc就是我们vim的配置文件，这里我们让 neovim 也使用该配置文件
source ~/.vimrc
