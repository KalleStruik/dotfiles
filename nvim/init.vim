" Set the leader key before plugin initialization.
let g:mapleader="\<Space>"

" Make sure plugins cant use space as a keymapping.
nnoremap <Space>  <Nop>
xnoremap <Space>  <Nop>

"
"General vim config---------------------
"
set number relativenumber " Pretty line numbers
set mouse=a " I like the mouse
set clipboard=unnamedplus " Use system clipboard

" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.vim/undo

" Nice tabs
set list lcs=tab:\|-
set tabstop=4
set softtabstop=4
set noexpandtab
set shiftwidth=4
set smarttab

" Colors---------------------------------- 
syntax enable " Syntax highlighting
colorscheme dracula " Use the dracula colorscheme
set termguicolors " Enable full color support in terminal

" vim-buffet
function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer guibg=#2B899D guifg=#FFFFFF
  hi! BuffetActiveBuffer guibg=#191A21 guifg=#8BE9FD
  hi! BuffetBuffer guibg=#191A21 guifg=#FFFFFF
  hi! BuffetTrunc guibg=#21222C guifg=#FFFFFF
  hi! BuffetTab guibg=#7D53B9 guifg=#FFFFFF
endfunction
"
"Plugin Config----------------------------
"
let g:NERDCreateDefaultMappings = 0
let g:deoplete#enable_at_startup = 1

" Spaceline
let g:spaceline_seperate_style= 'arrow'
let g:spaceline_colorscheme = 'space'

" vim-buffet
let g:buffet_tab_icon = ""
let g:buffet_powerline_separators = 1
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"

" vim-which-key
let g:which_key_map =  {}
let g:which_key_map.1 = 'Select window 1'
let g:which_key_map.2 = 'Select window 2'
let g:which_key_map.3 = 'Select window 3'
let g:which_key_map.4 = 'Select window 4'
let g:which_key_map.5 = 'Select window 5'
let g:which_key_map.6 = 'Select window 6'
let g:which_key_map.7 = 'Select window 7'
let g:which_key_map.8 = 'Select window 8'
let g:which_key_map.9 = 'Select window 9'
let g:which_key_map.0 = 'Select window 10'
let g:which_key_map.c = 'Toggle comment'
let g:which_key_map.n = 'Open file tree'
let g:which_key_map.j = "Open any jump"
let g:which_key_map.w = "Close current tab"
let g:which_key_map.f = "Clap"
let g:which_key_map.r = "Toggle rainbow highlighting"
let g:which_key_map.g = {'name': "+grammarous"}
let g:which_key_map.g.c = "Check"
let g:which_key_map.g.r = "Reset"

" any-jump
let g:any_jump_disable_default_keybindings = 1

" vim-markdown
let g:vim_markdown_folding_level = 1
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_auto_insert_bullets = 1
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_edit_url_in = 'vsplit'
let g:vim_markdown_fenced_languages = [
  \ 'c++=cpp',
  \ 'viml=vim',
  \ 'bash=sh',
  \ 'ini=dosini',
  \ 'js=javascript',
  \ 'json=javascript',
  \ 'jsx=javascriptreact',
  \ 'tsx=typescriptreact',
  \ 'docker=Dockerfile',
  \ 'makefile=make',
  \ 'py=python'
  \ ]

" rainbow
let g:rainbow_active = 1

" vimtex
let g:tex_flavor = 'latex'
let g:vimtex_compiler_latexmk = {
	\ 'build_dir' : 'build',
    \ 'options' : [
    \   '-pdf',
    \   '-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/kalle/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/kalle/.local/share/dein')
  call dein#begin('/home/kalle/.local/share/dein')

  " Let dein manage dein Required:
  call dein#add('/home/kalle/.local/share/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neco-syntax')
  call dein#add('tbodt/deoplete-tabnine', { 'build': './install.sh' })
  call dein#add('preservim/nerdcommenter')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('hardcoreplayers/spaceline.vim')
  call dein#add('bagrat/vim-buffet')
  call dein#add('liuchengxu/vim-which-key')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('preservim/nerdtree')
  call dein#add('pechorin/any-jump.vim')
  call dein#add('liuchengxu/vim-clap')
  call dein#add('rhysd/accelerated-jk')
  call dein#add('t9md/vim-choosewin')
  call dein#add('junegunn/vim-easy-align')
  call dein#add('simnalamburt/vim-mundo')
  call dein#add('plasticboy/vim-markdown')
  call dein#add('luochen1990/rainbow')
  call dein#add('rhysd/vim-grammarous')
  call dein#add('dag/vim-fish')
  call dein#add('lervag/vimtex')
  call dein#add('calculuswhiz/vim-GAS-x86_64-highlighter')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
filetype plugin on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

call which_key#register('<Space>', "g:which_key_map")

call deoplete#custom#var('omni', 'input_patterns', {
          \ 'tex': g:vimtex#re#deoplete
          \})

"Auto commands ---------------------------
au User VimtexEventInitPost call vimtex#compiler#start()
"
"Keymappings -----------------------------
"
" General
nnoremap <silent> <leader>w :b#<bar>bd#<CR>

" NERDCommenter
nnoremap <silent> <leader>c :call NERDComment("n", "Toggle")<cr>
xnoremap <silent> <leader>c :call NERDComment("x", "Toggle")<cr>

" vim-buffet
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

" vim-which-key
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>

" NERDTree
nnoremap <silent> <leader>n :NERDTreeToggle<CR>

" any-jump
nnoremap <leader>j :AnyJump<CR>
xnoremap <leader>j :AnyJumpVisual<CR>

" clap
nnoremap <silent> <leader>f :Clap<CR>

" accelerated-jk
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

" vim-choosewin
nmap - <Plug>(choosewin)

" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" vim-mundo"
nnoremap <F5> :MundoToggle<CR>

" rainbow
nnoremap <leader>r :RainbowToggle<CR>

" grammarous
nnoremap <leader>gc :GrammarousCheck<CR>
nnoremap <leader>gr :GrammarousReset<CR>
