set nocompatible
set backspace=indent,eol,start
set nobackup		" do not keep a backup file, use versions instead
set history=100		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
syntax on		" syntax on
set hlsearch		" highlight on when searching
set ignorecase		" ignore case
"set number
set title
set nowrap
filetype plugin indent on

" Open files ingdk.
set fencs=utf-8,gbk
" Run |:set fileencoding=gbk| before saving, which will save the text as gbk.

" Assemble file in nasm syntax.
let asmsyntax="nasm"

" For taglist plugin.
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1

" For MRU plugin.
let MRU_Max_Entries = 40
let MRU_Window_Height = 41
let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'

" This will disable 'copy'.
"set mouse=a

" /usr/share/vim/vim71/colors: darkblue, koehler, torte, or no-colorscheme
colorscheme koehler

nnoremap <F2> :w<CR>
nnoremap <F3> :BufExplorer<CR>
nnoremap <F4> :MRU<CR>

nnoremap <F5> :w<CR>:make<CR>:cw<CR>
nnoremap <F6> :w<CR>:make %<<CR>:cw<CR>
nnoremap <F7> :!./%<<CR>
nnoremap <F8> :!./%<CR>

"nnoremap <F9> :grep <C-R><C-W> -wr .<CR>
nnoremap <F9> :grep <cword> -wr . --include=*.[ch]<CR>
nnoremap <C-F9> :grep "<C-R>"" -r . --include=*.[ch]<CR>
nnoremap <F10> :Tlist<CR>
nnoremap <F11> :grep "" -r . --include=*.[ch]<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
nnoremap <F12> :Project<CR>

inoremap () ()<LEFT>
inoremap [] []<LEFT>
inoremap {} {}<LEFT>
inoremap <> <><LEFT>
inoremap '' ''<LEFT>
inoremap "" ""<LEFT>

nmap gw <C-w>w
nmap gq :q<CR>
nmap gm :w<CR>:make<CR>:cw<CR>
nmap <Tab> <C-^>

map! <C-l> <RIGHT>

nmap <Space> <C-F>
nmap <UP> <C-Y>
nmap <DOWN> <C-E>

autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif

" use SPACE to open/close the fold
"set foldenable
"set foldmethod=syntax
"set foldclose=all
"set foldlevel=10
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
