syntax on
set mouse=a
set background=dark
colorscheme solarized
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
"set list "

" Set the personal leader key to ,
let mapleader = ","

filetype plugin indent on

filetype plugin on

let g:pydiction_location='~/.vim/completion/complete-dict'

"Taglist variables
" Display function name in status bar:
let g:ctags_statusline=1
" Automatically start script
let generate_tags=1
" Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=0
" Shorter commands to toggle Taglist display
nnoremap TT :TlistToggle<CR>
map <F4> :TlistToggle<CR>
" Various Taglist diplay config:
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1


" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" Python syntax fix
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(

" NERDTree setup
map <F3> :NERDTreeToggle<CR>

augroup RubyTests
    au!
    autocmd BufRead,BufNewFile *_test.rb,test_*.rb,*_spec.rb,spec_*.rb
        \ :nmap gt :<C-U>!ruby %<CR>
augroup END
