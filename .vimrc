" vim-plug

call plug#begin('~/.vim/plugged')
Plug 'vim-latex/vim-latex'
"Plug 'xuhdev/vim-latex-live-preview'
"Plug 'lervag/vimtex'
Plug 'Townk/vim-autoclose'
Plug 'ervandew/supertab'
"
Plug 'Rip-Rip/clang_complete' 
Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'OmniCppComplete'
Plug 'vim-scripts/taglist.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
"Plug 'ivalkeen/nerdtree-execute'
"Plug 'easymotion/vim-easymotion'
Plug 'flazz/vim-colorschemes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/lightline.vim'
"Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/indentLine'
"Plug 'scrooloose/syntastic'
Plug 'baskerville/vim-sxhkdrc'
call plug#end()

syntax enable
colorscheme molokaitransp


" Vim-latex

filetype plugin on
set grepprg=grep\ -nH\ $*
filetype indent on


let g:tex_flavor='latex'
let g:Tex_GotoError=0

" dont hide math Dollar signs...
let g:tex_conceal='ag'

"let g:Tex_CompileRule_pdf = 'pdflatex --synctex=1 -interactions=nonstopmode $*'
"let g:Tex_CompileRule_pdf = 'pdflatex -interactions=nonstopmode $*'
let g:Tex_CompileRule_pdf = 'pdflatex $*'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf'
let g:Tex_ViewRule_pdf = 'zathura'
"let g:livepreview_previewer = 'zathura'
"let theuniqueserv = expand("%:r")

"schnelles speichern und kompilieren, und position in pdf anzeigen. zathura muss aber
"vorher geöffnet worden sein. Nur bei Latex files
autocmd BufNewFile,BufRead *.tex nmap <F2> <ESC>:w<Return><leader>ll<leader>ls
autocmd BufNewFile,BufRead *.tex imap <F2> <ESC>:w<Return><leader>ll<leader>ls


" toggle spellchek
map <F4> :setlocal spell! spelllang=de_de<Return>


" Python Mode
"let g:pymode_rope = 0
"let g:pymode_doc = 1
"let g:pymode_doc_key = 'K'
"let g:pymode_syntax = 1
"let g:pymode_syntax_all = 1
"let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"let g:pymode_syntax_space_errors = g:pymode_syntax_all
"let g:pymode_lint = 1
"let g:pymode_lint_checker = "pyflakes,pep8"
"let g:pymode_lint_write = 1



let g:clang_user_options="-std=c++11"

" vim cpp enhanced highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1



" NerdTree

nmap <F3> :NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>


" lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

""supertab
let g:SuperTabClosePreviewOnPopupClose=1
let g:SuperTabDefaultCompletionType = "context"



"navigation in split windows
let g:BASH_Ctrl_j = 'off'
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" force sudo on write
cmap w!! w !sudo tee > /dev/null %

set number
set cursorline
set wildmode=longest,full
set wildmenu
set ruler
set showmode
set incsearch
set nocompatible
set mouse=a
set ic
set clipboard=unnamedplus

set tw=79
set formatoptions+=l
set colorcolumn=80
set so=5
set tabpagemax=30
