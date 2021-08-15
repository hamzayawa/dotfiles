" --------------------------------------------------------------------
""	Plugins							     ""
" --------------------------------------------------------------------


" -----------------------------------------------------------------------------
" BEHAVIOR
" -----------------------------------------------------------------------------

set nocompatible            " Disable vi compatibility

filetype on                 " filetype must be 'on' before setting it 'off'
                            "   otherwise it exits with a bad status and breaks
                            "   git commit.
filetype off                " force reloading *after* pathogen loaded

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin(expand('~/.vim/bundle'))
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive' "Premier vim plugin for GIT
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'  "Checking Syntax errors
Plugin 'airblade/vim-gitgutter'  " Vim plugin which shows a git ines have been added, modified, or removed.
Plugin 'vim-airline/vim-airline' "Setting up my status
Plugin 'tpope/vim-commentary'  "Insering comment with gcc command
Plugin 'dense-analysis/ale'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'itchyny/lightline.vim' "A light and configurable statusline/tabline plugin for Vim
Plugin 'morhetz/gruvbox' "Theme
Plugin 'ap/vim-css-color' "Displays a preview of color
Plugin 'junegunn/goyo.vim' "Simple writing theme that
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'alvan/vim-closetag'
Plugin 'vifm/vifm.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'chun-yang/auto-pairs'
Plugin 'junegunn/vim-github-dashboard'
Plugin 'ryanoasis/vim-devicons'
Plugin 'xero/sourcerer.vim'
Plugin 'luochen1990/rainbow'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-lua/popup.nvim'
Plugin 'nvim-telescope/telescope.nvim'
Plugin 'neovim/nvim-lspconfig'
Plugin 'kabouzeid/nvim-lspinstall'
Plugin 'glepnir/lspsaga.nvim'
Plugin 'hrsh7th/nvim-compe'
Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plugin 'nvim-treesitter/nvim-treesitter-textobjects'
Plugin 'glepnir/galaxyline.nvim', { 'branch': 'main' }
Plugin 'kyazdani42/nvim-web-devicons'  " needed for galaxyline icons
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'nikvdp/neomux'
Plugin 'hoob3rt/lualine.nvim'
Plugin 'kristijanhusak/defx-git'
Plugin 'kristijanhusak/defx-icons'
Plugin 'folke/lsp-colors.nvim'
Plugin 'nvim-lua/completion-nvim'
Plugin 'shougo/defx.nvim', { 'do': ':TSUpdate'}
Plugin 'danilamihailov/beacon.nvim'

call vundle#end()            " required

" -----------------------------------------------------------------
"		Leader Key
let mapleader=","


syntax on "Turning Syntax on
filetype plugin indent on   " enable detection, plugins and indent

set spell spelllang=en_us
set encoding=utf-8 nobomb   " BOM often causes trouble, UTF-8 is awsum.

" --- performance / buffer ---
set hidden                  " can put buffer to the background without writing
                            "   to disk, will remember history/marks.
set lazyredraw              " don't update the display while executing macros
set ttyfast                 " Send more characters at a given time.

" --- history / file handling ---
set history=999             " Increase history (default = 20)
set undofile
set undolevels=999          " Moar undo (default=100)
set autoread                " reload files if changed externally

" --- search / regexp ---
set gdefault                " RegExp global by default
set magic                   " Enable extended regexes.
set hlsearch                " highlight searches
set incsearch               " show the `best match so far' astyped
set ignorecase smartcase    " make searches case-insensitive, unless they
                            "   contain upper-case letters

" --- keys ---
set confirm
set backspace=indent,eol,start confirm " allow backspacing over everything.
"set esckeys                     " Allow cursor keys in insert mode.
set nostartofline               " Make j/k respect the columns
" set virtualedit=all            " allow the cursor to go in to 'invalid' places
set timeoutlen=500              " how long it wait for mapped commands
set ttimeoutlen=100             " faster timeout for escape key and others

" --- backup and swap files ---
" I save all the time, those are annoying and unnecessary...
set nobackup
set nowritebackup
set noswapfile
" --- Cursor Setting ----------------------------------
"
set cursorline              " Highlight current line
set cursorcolumn
set colorcolumn=100
highlight CursorLine ctermbg=Yellow cterm=bold guibg=#2b2b2b
highlight CursorLine ctermbg=Yellow cterm=bold guibg=#2b2b2b

set laststatus=2            " Always show status line
set nu rnu                  " Enable line numbers & Relative line numbers.
set numberwidth=5           " width of numbers line (default on gvim is 4)
set report=0                " Show all changes.
set showmode                " Show the current mode.
set showcmd                 " show partial command on last line of screen.
set showmatch               " show matching parenthesis
set splitbelow splitright   " how to split new windows.
set title                   " Show the filename in the window title bar.

set scrolloff=5             " Start scrolling n lines before horizontal
                            "   border of window.
set sidescrolloff=7         " Start scrolling n chars before end of screen.
set sidescroll=1            " The minimal number of columns to scroll


" --- command completion ---
set wildmenu                " Hitting TAB in command mode will
set wildchar=<TAB>          "   show possible completions.
set wildmode=list:longest
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*
set wildignore+=*.DS_STORE,*.db,node_modules/**,*.jpg,*.png,*.gif
set wildignore+=*/coverage


" --- diff ---
set diffopt=filler          " Add vertical spaces to keep right
                            "   and left aligned.
set diffopt+=iwhite         " Ignore whitespace changes.


" --- folding---
set foldmethod=manual       " manual fold
set foldnestmax=3           " deepest fold is 3 levels
set nofoldenable            " don't fold by default


" --- list chars ---
" list spaces and tabs to avoid trailing spaces and mixed indentation
" see key mapping at the end of file to toggle `list`
set listchars=tab:▹\ ,trail:·,nbsp:⚋
set fillchars=fold:-
set list


" --- remove sounds effects ---
set noerrorbells
set visualbell

" -----------------------------------------------------------------------------
" INDENTATION AND TEXT-WRAP
" -----------------------------------------------------------------------------

set expandtab                   " Expand tabs to spaces
set autoindent smartindent      " auto/smart indent
set copyindent                  " copy previous indentation on auto indent
set softtabstop=4               " Tab key results in # spaces
set tabstop=4                   " Tab is # spaces
set shiftwidth=4                " The # of spaces for indenting.
set smarttab                    " At start of line, <Tab> inserts shift width
                                "   spaces, <Bs> deletes shift width spaces.

set wrap                        " wrap lines
set textwidth=120
"set colorcolumn=+1              " Show large lines
set formatoptions=qrn1          " automatic formating.
set formatoptions-=o            " don't start new lines w/ comment leader on
                                "   pressing 'o'

set nomodeline                  " don't use modeline (security)

set pastetoggle=<leader>p       " paste mode: avoid auto indent, treat chars
                                "   as literal.

" --- autocomplete / supertab / jscomplete ---
set infercase
set completeopt=longest,menuone
set omnifunc=syntaxcomplete#Complete
set completefunc=syntaxcomplete#Complete
" set complete+=kspell
set complete=.,w,b,u,U,t,i,d
" see [autocommands] at the end for more autocomplete settings


" --- Strip trailing whitespace ---
function! StripWhitespace ()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction

" Trailing white space (strip spaces)
noremap <leader>ss :call StripWhitespace()<CR>


" --- matchit ---
runtime macros/matchit.vim          " enable matchit (better '%' key mapping)

" --- Others ---
set autoread wildmode=longest,list,full
set noruler "Setting up rulers & spacing
set expandtab
set cmdheight=1
set splitbelow splitright
au BufRead,BufNewFile *.fountain filetype=fountain
autocmd InsertEnter * norm zz
autocmd BufWritePre * %s/\s\+$//e
set termguicolors
set shortmess+=c

" Local dirs (centralize everything)
set backupdir=~/.vim/backups
set directory=~/.vim/swaps

" -----------------------------------------------------------------------------
" UI
" -----------------------------------------------------------------------------

set t_Co=256                " 256 colors terminal

" make 'var' keyword easier to spot
hi link javascriptType Keyword
" default ColorColumn is too distractive
hi clear ColorColumn
hi link ColorColumn FoldColumn
" defaul line number is too distractive
hi clear LineNr
hi link LineNr Comment
hi link OverLength Error

" --- UI settings ---

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  "let g:neosolarized_termtrans=1
  runtime ./colors/nord.vim
  colorscheme nord
endif

" --- FIX/IMPROVE DEFAULT BEHAVIOR ---

" avoid mistyping commands
command! W w
command! Wq wq
command! Bd bd

" -------------------------------------------------------------
"Shutcut split Navigation

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <Space> :EditVifm .<CR>
map <ENTER> :Goyo<CR>

map <Leader>l :!python %<cr>

" ------------------------------------------------------------
"Shutcut split opening
nnoremap <leader>h :split<Space>
nnoremap <leader>v :vsplit<Space>

nnoremap <Up> :echomsg "use k"<cr>
nnoremap <Down> :echomsg "use j"<cr>
nnoremap <Left> :echomsg "use h" <cr>
nnoremap <Right> :echomsg "use l"<cr>


nnoremap <leader>1 :NERDTreeToggle <cr>
onoremap z i(

" ----------------------------------------------------------
" Make windows to be basically the same size
nnoremap <A-=> <C-w>=

" ----------------------------------------------------------
" Sizing window horizontally
nnoremap <c-,> <C-w><
nnoremap <c-.> <C-w>>
nnoremap <A-,> <C-w>5<
nnoremap <A-.> <C-w>5>

" ---------------------------------------------------------
"Sizing window vertically
"Taller

nnoremap <A-t> <C-w>+

"Shorter
nnoremap <A-s> <C-W>-

" movement by screen line instead of file line (for text wrap)
"nnoremap j gj
"nnoremap <down> gj
"nnoremap k gk
"nnoremap <up> gk

" next tab
nnoremap <C-Tab> :tabn<CR>

" automatic esc, really uncommon to type jj,jk
inoremap jj <ESC>
inoremap jk <Esc>

" Faster scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Bubble single lines, similar to Eclipse (requires unimpaired.vim)
nmap <C-Up> [e
nmap <C-Down> ]e

" Bubble multiple lines, similar to Eclipse (requires unimpaired.vim)
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Duplicate lines, similar to Eclipse
noremap <C-S-Up> YP
noremap <C-S-Down> YP

" close window
noremap <leader>q :clo<CR>

" smarter next/prev buffer (requires bufkill.vim)
map <leader>bn :bn<CR>
map <leader>bp :bp<CR>

" ---- UltiSnip ----------------------------------------------
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsSnippetsDir = "~/.vim/ultisnips"
let g:UltiSnipsEditSplit = "vertical"


"Open UltiSnips edit function
nmap <leader>se :UltiSnipsEdit<cr>

let g:UltiSnipsNoPythonWarning = 1

" --------------------------------------------------------------------
"Ultisnip Config
"
function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"

autocmd FileType js UltiSnipsAddFiletypes javascript-jasmine
autocmd FileType jinja2 UltiSnipsAddFiletypes jinja
autocmd FileType js UltiSnipsAddFiletypes javascript
autocmd FileType html UltiSnipsAddFiletypes htmldjango
autocmd FileType py UltiSnipsAddFiletypes django
autocmd FileType md UltiSnipsAddFiletypes markdown

let g:loaded_python_provider = 0


let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle


" nodejs-complete / jscomplete
let g:node_usejscomplete = 1
let g:jscomplete_use = ['dom', 'moz']

let g:SuperTabMappingForward = '<s-Tab>'
let g:SuperTabMappingBackward = '<s-c-Tab>'
let g:SuperTabLongestEnhanced = 1
let g:SuperTabDefaultCompletionType = "<c-p>"

" --- EasyMotion ---
let g:EasyMotion_leader_key = '<Leader>m'
" lets make <leader>F and <leader>f use easymotion by default
let g:EasyMotion_mapping_f = '<leader>f'
let g:EasyMotion_mapping_F = '<leader>F'

" let g:lightline = {
"       \ 'colorscheme': 'PaperColor',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"       \ },
"       \ 'component_function': {
"       \   'gitbranch': 'FugitiveHead'
"       \ },
"       \ }


"colorscheme nord

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'


" -----------------------------------------------------------------
"NERDTree Config
"
"
" Start NERDTree
"autocmd VimEnter * NERDTree
"
let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

" >> setup nerdcomment key bindings
let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1


let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name


" -----------------------------------------------------------------
" this mapping Enter key to <C-y> to chose the current highlight item
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"Select the complete menu item
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" : "<CR>"

"Cancel the completion menu item
inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"

"Navigation the complete menu item
inoremap <expr> <Down> pumvisible() ? "<C-n>" : "<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"


" Jump to the main window.
autocmd VimEnter * wincmd p


" ---------------------------------------------------------------------
" >> Telescope bindings
"
nnoremap <Leader>pp :lua require'telescope.builtin'.builtin{}<CR>

" most recentuly used files
nnoremap <Leader>m :lua require'telescope.builtin'.oldfiles{}<CR>

" find buffer
nnoremap ; :lua require'telescope.builtin'.buffers{}<CR>

" find in current buffer
nnoremap <Leader>/ :lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>

" bookmarks
nnoremap <Leader>' :lua require'telescope.builtin'.marks{}<CR>

" git files
nnoremap <Leader>g :lua require'telescope.builtin'.git_files{}<CR>

" all files
nnoremap <Leader>f :lua require'telescope.builtin'.find_files{}<CR>

" ripgrep like grep through dir
nnoremap <Leader>rg :lua require'telescope.builtin'.live_grep{}<CR>

" pick color scheme
nnoremap <Leader>cs :lua require'telescope.builtin'.colorscheme{}<CR>


" ---------------------------------------------------------------
"Default Multiple_cursor mapping

let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_start_word_key       = '<C-n>'
let g:multi_cursor_select_all_word_key  ='<A-n>'
let g:multi_cursor_start_key            ='g<C-n>'
let g:multi_cursor_sellect_all_key      ='g<A-n>'
let g:multi_cursor_next_key             ='<C-n>'
let g:multi_cursor_prev_key             ='<C-p>'
let g:multi_cursor_skip_key             ='<C-x>'
let g:multi_cursor_quit_key             ='<Esc>'

" --------------------------------------------------------------
" >> Lsp key bindings
"
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <C-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K     <cmd>Lspsaga hover_doc<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-p> <cmd>Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> <C-n> <cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> gf    <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> gn    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> ga    <cmd>Lspsaga code_action<CR>
xnoremap <silent> ga    <cmd>Lspsaga range_code_action<CR>
nnoremap <silent> gs    <cmd>Lspsaga signature_help<CR>


lua <<EOF
require("lsp")
require("treesitter")
require("statusbar")
require("completion")
EOF



" -----------------------------------------------------------------------------
" FILE HANDLING
" -----------------------------------------------------------------------------

" [autocommands] borrowed from @bit-theory vimfiles and edited
augroup mm_buf_cmds
    " clear commands before resetting
    autocmd!

    " when vimrc is edited, reload it
    autocmd bufwritepost .gvimrc source %
    autocmd bufwritepost .vimrc source %

    " Only show cursorline in the current window and in normal mode
    au WinLeave,InsertEnter * set nocul
    au WinEnter,InsertLeave * set cul

    " filetype
    autocmd BufNewFile,BufRead *.json setf json
    autocmd BufNewFile,BufRead *.hx setf haxe

    autocmd FileType mustache runtime! ftplugin/html/sparkup.vim

    " Enable omnicomplete for supported filetypes
    autocmd FileType css,scss setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    " autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    " jscomplete is a separate plugin
    autocmd FileType javascript setlocal omnifunc=jscomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

    " make `gf` search for .js files
    autocmd FileType javascript,javascript.jsx setlocal suffixesadd=.js
    autocmd FileType javascript,javascript.jsx setlocal path+=js,scripts,src

    " make sure `complete` works as expected for CSS class names without
    " messing with motions (eg. '.foo-bar__baz') and we make sure all
    " delimiters (_,-,$,%,.) are treated as word separators outside insert mode
    "autocmd InsertEnter,BufLeave * :silent call KeywordsAll()
    "autocmd InsertLeave,BufEnter * :silent call KeywordsBasic()

    " yes, we need to duplicate it on VimEnter for some weird reason
    autocmd VimEnter * nnoremap * :silent call KeywordsAll()<CR> *
    autocmd VimEnter * nnoremap # :silent call KeywordsAll()<CR> #

    " Toggle relative/absolute line numbers during edit
    " if exists('+relativenumber')
        " autocmd InsertEnter * setl nu
        " autocmd InsertLeave,BufEnter * setl rnu
    " endif

    " highlight char at column 121 (textwidth + 1)
    autocmd BufEnter * match OverLength /\%121v/

    " Color Column (only on insert)
    if exists("&colorcolumn")
        autocmd InsertEnter * set colorcolumn=120
        autocmd InsertLeave * set colorcolumn=""
    endif
augroup EN
