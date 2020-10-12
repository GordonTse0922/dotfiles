let g:ale_linters = {
\   'python': ['flake8', 'pylint'],
\   'javascript': ['eslint'],
\   'vue': ['eslint'],
\   'typescript': ['eslint'],
\   'sql':['sql-lint'],
\   'php':['phpcs']
\ }
let g:ale_fixers = {
  \    'javascript': ['eslint'],
  \    'typescript': ['prettier', 'tslint'],
  \    'vue': ['eslint'],
  \    'scss': ['prettier'],
  \    'html': ['prettier'],
  \    'reason': ['refmt'],
  \    'php':['php-cs-fixer']
  \ }
let g:ale_virtualtext_cursor = 1
let g:ale_fix_on_save = 0
