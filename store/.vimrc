"base
set autoindent
set ts=4

" set mouse=a
" set clipboard=autoselect,autoselectml
" set guioptions+=a

" colorscheme my
colo kkruby
set t_Co=256

cmap Q q
cmap W w
cmap WQ wq
cmap Wq wq
cmap tn tabnew

imap <F2> ''<ESC>i
imap <F3> ""<ESC>i
imap <F7> ()<ESC>i
imap <F8> []<ESC>i
imap <F9> {}<ESC>i

map <C-h> ^
map <C-l> $
map <C-k> {
map <C-j> }
inoremap jj <ESC>
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <C-Left> :tabprevious<CR>
nnoremap <silent> <C-t> :tabnew

"abbreviation
ab class class<CR>end<ESC>kA
ab def def<CR>end<ESC>kA
ab each each do \|<CR>end<ESC>kA<left>\|

"search, and replace
vnoremap ,s y/<C-R>"<CR>
vnoremap ,r y:%s/<C-R>"//g<left><left>

"save with root
cmap w!! w !sudo tee >/dev/null %

"NERD_tree
"git clone git@github.com:scrooloose/nerdtree
noremap <F5> :NERDTreeToggle<CR>

"folder
au BufWinLeave * mkview
au BufWinEnter * silent loadview

"comment/uncomment
autocmd FileType c,cpp,java,php	  let b:comment_leader = '// '
autocmd FileType sh,ruby,python	  let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '

noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

