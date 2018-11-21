set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'tpope/vim-vividchalk'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'fmoralesc/molokayo'
Plugin 'tomasr/molokai'
Plugin 'python-mode/python-mode'
Plugin 'vim-scripts/Wombat'
Plugin 'junegunn/seoul256.vim'
Plugin 'sjl/badwolf'
Plugin 'joshdick/onedark.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'morhetz/gruvbox'
Plugin 'vim-syntastic/syntastic'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set runtimepath+=~/.vim_runtime
set encoding=utf-8
set number
let g:airline_section_b = '%{strftime("%c")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'simple'
let g:go_version_warning = 0
let NERDTreeNodeDelimiter = "\t"
let NERDTreeMinimalUI = 1
let g:NERDTreeWinPos = "left"
let NERDTreeDirArrows = 1
let g:python_highlight_all = 1
let g:gruvbox_hls_cursor='orange'
let g:gruvbox_invert_signs = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_wq = 0
let g:pymode_options_max_line_length = 100
nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
autocmd User ALELint call code symbols
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:solarized_termcolors=256
let g:gruvbox_termcolors=256
let g:pymode_python = 'python3'
let g:rbpt_colorpairs = [['darkcyan',    'SeaGreen3']]
let g:gruvbox_contrast_dark = 'hard'
set background=dark
colorscheme gruvbox
set t_Co=256
set term=xterm-256color
if (has("nvim"))
      "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
      "
      "  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
      "  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
      "  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
    set termguicolors
endif
try
source ~/.vim_runtime/my_configs.vim
catch
endtry
