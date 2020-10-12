let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-phpls',
  \ 'coc-css',
  \ 'coc-html',
  \ 'coc-snippets',
  \ 'coc-emmet',
  \ 'coc-pairs',
  \ 'coc-tabnine',
  \ 'coc-gitignore',
  \ 'coc-git',
  \ 'coc-vimlsp',
  \ ]

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

