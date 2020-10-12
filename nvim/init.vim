set nocompatible
let g:ale_disable_lsp=1
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('rakr/vim-one')
  call dein#add('morhetz/gruvbox')
  call dein#add('sainnhe/gruvbox-material')
  call dein#add('luochen1990/rainbow',{
    \ 'hook_add':'let g:rainbow_active = 1'})
  call dein#add('psliwka/vim-smoothie',{'hook_add':'let g:smoothie_no_default_mappings = v:true'})
  call dein#add('liuchengxu/vim-which-key',{
    \ 'on_cmd':['Whichkey','Whichkey!'],
    \ 'hook_add':"
    \ let g:which_key_map =  { 'name' : 'Leader'}\n
    \ let g:which_key_localmap =  {'name' : 'LocalLeader'}\n
    \ "
    \ ,
    \ 'hook_post_source':"
    \ function! s:register_whichkey()\n
    \  let s:leader_key=substitute(get(g:,'mapleader','\\'), ' ', '<Space>', '')\n
    \  let s:localleader_key= get(g:,'maplocalleader',';')\n
    \  call which_key#register(s:leader_key, 'g:which_key_map')\n
    \  call which_key#register(s:localleader_key, 'g:which_key_localmap')\n
    \ endfunction\n
    \ call s:register_whichkey()\n
    \ "
    \ })
  call dein#add('norcalli/nvim-colorizer.lua',{
    \ 'on_ft':['html','css','sass','scss','stylus','vim','javascript','javascriptreact','typescript','typescriptreact'],
    \ 'hook_source':'source ~/.vim/config/plugins/colorizer-settings.lua'
    \ })
  call dein#add('easymotion/vim-easymotion',{
		\ 'on_map':{'n':'<Plug>'},
    \ 'hook_source':"
    \ let g:EasyMotion_do_mapping = 0 \n
    \ let g:EasyMotion_prompt = 'Jump to → '\n
    \ let g:EasyMotion_keys = 'fjdkswbeoavn'\n
    \ let g:EasyMotion_smartcase = 1\n
    \ let g:EasyMotion_use_smartsign_us = 1\n
    \ "
    \ })
  call dein#add('vim-airline/vim-airline',{'hook_add':
    \ "
    \ let g:airline#extensions#tabline#enabled = 1\n
    \ let g:airline#extensions#tabline#formatter = 'unique_tail_improved'\n
    \ "
    \ })
  call dein#add('vim-airline/vim-airline-themes')
  "call dein#add('hardcoreplayers/spaceline.vim',{
    "\ 'on_event':['BufReadPre','BufNew'],
    "\ 'hook_add': "
		"\ let g:spaceline_git_branch_icon= ''\n
		"\ let g:spaceline_seperate_style= 'arrow'\n
		"\"
    "\ })
  call dein#add('ryanoasis/vim-devicons')
  "call dein#add('hardcoreplayers/vim-buffet',{
    "\ 'on_event':['BufReadPre','BufNew'],
    "\ 'hook_add':"
    "\ let g:buffet_always_show_tabline=1\n
    "\ let g:buffet_powerline_separators=1\n
    "\ "
    "\ })
  call dein#add('liuchengxu/vim-clap')
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', {
    \ 'depends': 'fzf',
    \ 'hook_source':'source ~/.vim/config/plugins/fzf.vim'})
  call dein#add('neoclide/coc.nvim', {
    \ 'merged':0,
    \ 'rev': 'release',
    \ 'hook_source':'source ~/.vim/config/plugins/coc-settings.vim'
    \ })
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('vn-ki/coc-clap')
  call dein#add('Shougo/defx.nvim',{
    \ 'on_cmd':'Defx',
    \ 'hook_source':'source ~/.vim/config/plugins/defx.vim'})
  call dein#add('kristijanhusak/defx-git',{
    \ 'on_source':'defx.nvim'})
  call dein#add('kristijanhusak/defx-icons',{
    \ 'on_source':'defx.nvim'})
  call dein#add('liuchengxu/vista.vim')
  call dein#add('tpope/vim-fugitive',{
    \ 'hook_source':"
    \ augroup user_fugitive_plugin\n
    \ autocmd!\n
    \ autocmd FileType fugitiveblame normal A\n
    \ augroup END\n
    \ "
    \ })
  call dein#add('Yggdroot/indentLine')
  call dein#add('Shougo/echodoc.vim',{
    \ 'hook_source':'source ~/.vim/config/plugins/echodoc.vim'})
  call dein#add('godlygeek/tabular')
  call dein#add('gabrielelana/vim-markdown')
  call dein#add('sheerun/vim-polyglot',{
    \ 'hook_source':'source ~/.vim/config/plugins/polyglot.vim'})
  call dein#add('dense-analysis/ale',{
    \ 'hook_source':'source ~/.vim/config/plugins/ale.vim'})
  "call dein#add('iamcco/markdown-preview.nvim',{
    "\ 'on_ft': ['markdown', 'pandoc.markdown', 'rmd'],
    "\ 'build': 'sh -c
    ""cd app && yarn install"',
    "\ 'hook_source':'source ~/.vim/config/plugins/markdown-preview.vim'})
  call dein#add('preservim/nerdcommenter',{
		\ 'hook_add':"
		\ vmap ++ <plug>NERDCommenterToggle\n
		\ nmap ++ <plug>NERDCommenterToggle\n
		\ "
		\ })
call dein#end()
call dein#save_state()
endif
call dein#call_hook('source')
call dein#call_hook('post_source')
filetype plugin indent on
let g:python3_host_prog = '/usr/local/bin/python3.8'
syntax on
colors one
set background=dark
set termguicolors
set re=1
highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE
""" Other Configurations
set mouse=nv
set errorbells               " Trigger bell on error
set visualbell               " Use visual bell instead of beeping
set updatetime=300
set cursorline
set history=100
set noruler  noshowcmd noshowmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\
set wrap breakindent
set encoding=utf-8
set number relativenumber
set title
" Title length.
set titlelen=95
" Title string.
let &g:titlestring="
      \ %{expand('%:p:~:.')}%(%m%r%w%)
      \ %<\[%{fnamemodify(getcwd(), ':~')}\] - Neovim"
set hidden
set showmatch           " Jump to matching bracket
set matchpairs+=<:>     " Add HTML brackets to pair matching
set matchtime=1         " Tenths of a second to show the matching paren
set signcolumn=yes
set winwidth=30         " Minimum width for active window
set winminwidth=10      " Minimum width for inactive windows
" set winheight=4         " Minimum height for active window
set winminheight=1      " Minimum height for inactive window
set pumheight=15        " Pop-up menu's line height
set helpheight=12       " Minimum help window height
set previewheight=12    " Completion preview height
" Give more space for displaying messages.
set cmdheight=2         " Height of the command line"
set cmdwinheight=5      " Command-line lines
set noequalalways       " Don't resize windows on split or close
set laststatus=2        " Always show a status line
"set colorcolumn=+0      " Column highlight at textwidth's max character-limit
set display=lastline
set updatetime=300
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
" Tabs and Indents {{{
" ----------------
set textwidth=80    " Text width maximum chars before wrapping
set noexpandtab     " Don't expand tabs to spaces
set tabstop=4       " The number of spaces a tab is
set shiftwidth=4    " Number of spaces to use in auto(indent)
set softtabstop=-1  " Automatically keeps in sync with shiftwidth
set smarttab        " Tab insert blanks according to 'shiftwidth'
set autoindent      " Use same indenting on new lines
set smartindent     " Smart autoindenting on new lines
set shiftround      " Round indent to multiple of 'shiftwidth'

if exists('&breakindent')
	set breakindentopt=shift:2,min:20
endif
set spell
set spelllang=en,cjk
" }}}

" Behavior {{{
" --------
set autoread                    " Auto readfile
set nowrap                      " No wrap by default
set linebreak                   " Break long lines at 'breakat'
set breakat=\ \	;:,!?           " Long lines break chars
set nostartofline               " Cursor in same column for few commands
set whichwrap+=h,l,<,>,[,],~    " Move to following line on certain keys
set splitbelow splitright       " Splits open bottom right
set switchbuf=useopen,vsplit    " Jump to the first open window
set backspace=indent,eol,start  " Intuitive backspacing in insert mode
set diffopt=filler,iwhite       " Diff mode: show fillers, ignore whitespace
set completeopt=menu,menuone    " Always show menu, even for one item
set completeopt+=noselect,noinsert

if exists('+completepopup')
	set completeopt+=popup
	set completepopup=height:4,width:60,highlight:InfoPopup
endif

" Use the new Neovim :h jumplist-stack
if has('nvim-0.5')
	set jumpoptions=stack
endif

if has('patch-8.1.0360') || has('nvim-0.4')
	set diffopt+=internal,algorithm:patience
	" set diffopt=indent-heuristic,algorithm:patience
endif
" }}}

" Searching {{{
" ---------
set ignorecase    " Search ignoring case
set smartcase     " Keep case when searching with *
set infercase     " Adjust case in insert completion mode
set incsearch     " Incremental search
set wrapscan      " Searches wrap around the end of the file
set hlsearch      " Highlight search results

set complete=.,w,b,k  " C-n completion: Scan buffers, windows and dictionary

if exists('+inccommand')
	set inccommand=nosplit
endif

if executable('rg')
	set grepformat=%f:%l:%m
	let &grepprg = 'rg --vimgrep' . (&smartcase ? ' --smart-case' : '')
elseif executable('ag')
	set grepformat=%f:%l:%m
	let &grepprg = 'ag --vimgrep' . (&smartcase ? ' --smart-case' : '')
endif

" }}}

"Key Mapping{{{
"General
"--------
" Elite-mode {{{
" Disable arrow movement, resize splits instead.
nnoremap <silent><Up>    :resize +1<CR>
nnoremap <silent><Down>  :resize -1<CR>
nnoremap <silent><Left>  :vertical resize +1<CR>
nnoremap <silent><Right> :vertical resize -1<CR>
"}}}
"
inoremap jj <ESC>
" By default timeoutlen is 1000 ms
set timeoutlen=500
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
let g:which_key_map.c = { 'name': '+code' }
let g:which_key_map.f = { 'name': '+find'}
let g:which_key_map.o = { 'name': '+open' }
let g:which_key_map.t = { 'name': '+toggle'}
let g:which_key_map.g = { 'name': '+versioncontrol'}
"--------
"Buffer Management
"--------------
nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)
nnoremap  bp :<C-u>bp<CR>
nnoremap  bn :<C-u>bn<CR>
nnoremap <silent> <Leader>bx :Bw<CR>
noremap <C-t> :tabnew split<CR>
nmap <leader>bc :bd<CR>
let g:which_key_map.b = { 'name': '+buffer' }
let g:which_key_map.b.c='Close current buffer'
let g:which_key_map.b.x = 'remove all buffers'
let g:which_key_map.b.p = 'Next Buffer'
let g:which_key_map.b.n = 'Prev Buffer'
let g:which_key_map.1 = 'select window-1'
let g:which_key_map.2 = 'select window-2'
let g:which_key_map.3 = 'select window-3'
let g:which_key_map.4 = 'select window-4'
let g:which_key_map.5 = 'select window-5'
let g:which_key_map.6 = 'select window-6'
let g:which_key_map.7 = 'select window-7'
let g:which_key_map.8 = 'select window-8'
let g:which_key_map.9 = 'select window-9'
let g:which_key_map.0 = 'select window-10'
"--------------
"Window Management
"--------------
"switch windw
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
" window
nnoremap <leader><TAB> <C-O><CR>
nnoremap <leader>ws :<C-u>sp<CR>
nnoremap <leader>wv :<C-u>vs<CR>
nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l
nnoremap <leader>wH <C-w>H
nnoremap <leader>wJ <C-w>J
nnoremap <leader>wK <C-w>K
nnoremap <leader>wL <C-w>L
nnoremap <leader>wx <C-w>x
nnoremap <leader>wc <C-w>c
nnoremap <leader>wo <C-w>o
nnoremap <leader>wR <C-w>R
let g:which_key_map.w = { 'name': '+window'}
let g:which_key_map['<Tab>'] = 'switch to last buffer'
let g:which_key_map.w.s = 'horizontally split'
let g:which_key_map.w.v = 'vertical split'
let g:which_key_map.w.h = 'jump left window'
let g:which_key_map.w.j = 'jump bottom window'
let g:which_key_map.w.k = 'jump top window'
let g:which_key_map.w.l = 'jump right window'
let g:which_key_map.w.H = 'move window to left'
let g:which_key_map.w.J = 'move window to bottom'
let g:which_key_map.w.K = 'move window to top'
let g:which_key_map.w.L = 'move window to right'
let g:which_key_map.w.x = 'swap window'
let g:which_key_map.w.c = 'close window'
let g:which_key_map.w.o = 'close other window'
let g:which_key_map.w.R = 'spin window'
"---------------
"Dein
"---------------
nnoremap <silent> <Leader>pu  :call dein#update()<CR>
nnoremap <silent> <Leader>pr  :call dein#recache_runtimepath()<CR>
nnoremap <silent> <Leader>pl  :echo dein#get_updates_log()<CR>
let g:which_key_map.p = { 'name': '+plugin'}
let g:which_key_map.p.u = 'update all plugins'
let g:which_key_map.p.r = 'reache runtime path'
let g:which_key_map.p.l = 'plugins update log'
"---------------
"COC
"---------------
xmap <silent> <Leader>ca :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <Leader>ca :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <Leader>ci <Plug>(coc-implementation)
" Remap for rename current word
nmap <Leader>cn <Plug>(coc-rename)
" Remap for format selected region
vmap <Leader>cf  <Plug>(coc-format-selected)
nmap <Leader>cf  <Plug>(coc-format-selected)
" Fix autofix problem of current line
nmap <Leader>cF  <Plug>(coc-fix-current)
" show chunk diff at current position
nmap <Leader>gi <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap <Leader>gm <Plug>(coc-git-commit)
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent><Leader>cd :call CocActionAsync('doHover')<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" float window scroll
nnoremap <expr><C-f> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
nnoremap <expr><C-b> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"
" multiple cursors
nmap <silent><M-s> <Plug>(coc-cursors-position)
nmap <expr> <silent><M-d> <SID>select_current_word()
xmap <silent><M-d> <Plug>(coc-cursors-range)
"sear word on multiple files
nnoremap  <Leader>fz :<C-u>CocSearch -w<CR>
" coc-explorer
noremap <silent> <Leader>q :execute 'CocCommand explorer' .
        \ ' --toggle' .
        \ ' --position=floating' .
        \ ' --sources=file+'<CR>
" Example configuration
nmap <Leader>ba :CocList bookmark<CR>
nmap <Leader>bj <Plug>(coc-bookmark-next)
nmap <Leader>bk <Plug>(coc-bookmark-prev)
let g:which_key_map.b.a="List All Bookmarks"
let g:which_key_map.b.k='Previous Bookmark'
let g:which_key_map.b.j='Next Bookmark'
let g:which_key_map.c.a = 'Lsp CodeActionSelected'
let g:which_key_map["'"] = 'coc resume'
let g:which_key_map.c.n = 'Lsp Rename'
let g:which_key_map.c.i = 'Lsp Find implementation'
let g:which_key_map.c.f = 'Lsp Format'
let g:which_key_map.c.F = 'Lsp auto fix'
let g:which_key_map.c.d = 'Lsp Show Document'
let g:which_key_map.c.o = 'Lsp Organize Import'
let g:which_key_map.g.i = 'Show chunk diff at point'
let g:which_key_map.g.m = 'Show commit contains at point'
let g:which_key_map.j = 'open coc-exoplorer'
let g:which_key_map.f.z = 'find word on multipe files'
"--------------
"VIM-CLAP
"--------------
nnoremap <silent> <Leader>tc :<C-u>Clap colors<CR>
nnoremap <silent> <Leader>bb :<C-u>Clap buffers<CR>
nnoremap <silent> <Leader>fa :<C-u>Clap grep<CR>
nnoremap <silent> <Leader>fb :<C-u>Clap marks<CR>
"like emacs counsel-find-file
nnoremap <silent> <C-x><C-f> :<C-u>Clap filer<CR>
nnoremap <silent> <Leader>ff :<C-u>Clap files ++finder=rg --ignore --hidden --files<cr>
nnoremap <silent> <Leader>fg :<C-u>Clap gfiles<CR>
nnoremap <silent> <Leader>fw :<C-u>Clap grep ++query=<cword><cr>
nnoremap <silent> <Leader>fh :<C-u>Clap history<CR>
nnoremap <silent> <Leader>fW :<C-u>Clap windows<CR>
nnoremap <silent> <Leader>fl :<C-u>Clap loclist<CR>
nnoremap <silent> <Leader>fu :<C-u>Clap git_diff_files<CR>
nnoremap <silent> <Leader>fv :<C-u>Clap grep ++query=@visual<CR>
nnoremap <silent> <Leader>oc :<C-u>Clap personalconf<CR>
" Show all diagnostics
nnoremap <silent> <Leader>ce  :Clap coc_diagnostics<CR>
" Manage extensions
nnoremap <silent> <Leader>;   :Clap coc_extensions<CR>
" Show commands
nnoremap <silent> <Leader>,   :Clap coc_commands<CR>
" Search workspace symbols
nnoremap <silent> <Leader>cs  :Clap coc_symbols<CR>
nnoremap <silent> <Leader>cS  :Clap coc_services<CR>
nnoremap <silent> <leader>ct  :Clap coc_outline<CR>
let g:which_key_map.b.b ='Buffer List'
let g:which_key_map.f.a ='Find Word'
let g:which_key_map.f.b ='Find Marks'
let g:which_key_map.f.f ='Find File'
let g:which_key_map.f.g ='Find files with git'
let g:which_key_map.f.w ='Find current word'
let g:which_key_map.f.h ='Find history'
let g:which_key_map.f.W ='Find windows'
let g:which_key_map.f.l ='Find locallist'
let g:which_key_map.f.u ='Find uncommitted files'
let g:which_key_map.f.v ='Find visual text'
let g:which_key_map.o.c ='Open personal config'
let g:which_key_map[';']='coc extensions'
let g:which_key_map[',']='coc commands'
let g:which_key_map.c.e ='Lsp Show Diagnostics'
let g:which_key_map.c.S ='Lsp Show Services'
let g:which_key_map.c.s ='Lsp Show Symbols'
let g:which_key_map.c.t ='Lsp Show Outline'
"--------------
"Fugitive
nnoremap <silent> <Leader>ga :Git add %:p<CR>
nnoremap <silent> <Leader>gd :Gdiffsplit<CR>
nnoremap <silent> <Leader>gc :Git commit<CR>
nnoremap <silent> <Leader>gb :Git blame<CR>
nnoremap <silent> <Leader>gf :Gfetch<CR>
nnoremap <silent> <Leader>gs :Git<CR>
nnoremap <silent> <Leader>gp :Gpush<CR>
"-------------
"Fast Up&Down
"-------------
"nmap <silent>j <Plug>(accelerated_jk_gj)
"nmap <silent>k <Plug>(accelerated_jk_gk)
"_____________
"Smooth scrolling
"-------------
nnoremap <silent> <C-f> :<C-U>call smoothie#forwards()<CR>
nnoremap <silent> <C-b> :<C-U>call smoothie#backwards()<CR>
nnoremap <silent> <C-d> :<C-U>call smoothie#downwards()<CR>
nnoremap <silent> <C-u> :<C-U>call smoothie#upwards()<CR>
"-------------
"Defx -File explorer
"-------------
nnoremap <silent> <Leader>e
      \ :<C-u>Defx -resume -toggle -buffer-name=tab`tabpagenr()`<CR>
nnoremap <silent> <Leader>F
      \ :<C-u>Defx -resume -buffer-name=tab`tabpagenr()` -search=`expand('%:p')`<CR>
let g:which_key_map.e = 'Open defx'
let g:which_key_map.F = 'Open current file on defx'
"-------------
"Vista - Tag Bar
"-------------
nnoremap <silent> <Leader>i :<C-u>Vista!!<CR>
"------------
"EasyMotion
"------------
nmap gsj <Plug>(easymotion-w)
nmap gsk <Plug>(easymotion-b)
nmap gsf <Plug>(easymotion-overwin-f)
nmap gss <Plug>(easymotion-overwin-f2)
"------------
"Custom mapping
"------------
"Insert Mode
"{{
inoremap <C-O> <Esc>o   "Insert a newline
imap <C-S> <esc>:w<CR>  "Save
imap <C-Q> <esc>:wq<CR> "Save & quit
"}}
"Trim White Space
"{{
" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
"}}
"Terminal
"{{
"tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
tnoremap jj <C-\><C-n>
" start terminal in insert mode
set splitbelow
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap T :call OpenTerminal()<CR>
"tmap <C-d> <Esc>:q<CR>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert
"}}
