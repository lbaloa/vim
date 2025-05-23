" .vimrc
"   Init file for vim.
"
"  Leonardo Baloa, Ph.D.
"

" - Set clipboard to be unnamedplus.  This is to get "+y to work.
      if system('uname -s') == "Darwin\n"
        set clipboard=unnamed
      else
        set clipboard=unnamedplus
      endif

" - Default is nocompatible, however we are setting it to make sure.
      set nocompatible

" - Check filetype On and have indent and plugins On too
      filetype indent plugin on

" - Enable syntax highlighting
      syntax on

" - Smart search and ignore case
      set ignorecase
      set smartcase

" - Highlight search
      set hlsearch

" - Auto indent for files not identified by filetype
      set autoindent

" - Set ruler
      set ruler

" - Set laststatus
      set laststatus=2

" - Set visual bell
      set visualbell

" - Set mouse
      set mouse=a

" - Set tab for 2 spaces
      set shiftwidth=2
      set tabstop=2
      set expandtab

" - Set colorschemes depending on type

"   vim files
    autocmd WinEnter,FileType vim colorscheme lucario

"  Mapping match "end characters" to \ws and stop match to \wf

    :nnoremap <Leader>wn :match ExtraWhiteSpace /^\s* \s*\<Bar>\s\+$/<CR>
    :nnoremap <Leader>wf :match <CR>
