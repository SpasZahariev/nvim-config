let g:ale_linters = {'rust': ['analyzer']}

"disable this since it is handled by Coc
let g:ale_disable_lsp = 1

"Needed because rls defaults to nightly chain
let g:ale_rust_rls_toolchain = 'stable'

"I used this article to configure this: https://medium.com/swlh/how-did-i-setup-neovim-for-rust-1763eb2ef98c

set omnifunc=ale#completion#OmniFunc
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1

let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1

let g:ale_fixers = {
    \ '*': ['remove_trailing_lines', 'trim_whitespace'],
    \ 'rust': ['rustfmt'],
\}

"autocompletion
inoremap <silent><expr><TAB> pumvisible() ? “\<C-n>” : “\<TAB>”


nmap <silent> <leader>gd :ALEGoToDefinition<CR>
nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>
nmap <silent> <leader>fr :ALEFindReferences<CR>
"nnoremap <leader>gd :lua require('telescope.builtin').live_grep()<CR>
