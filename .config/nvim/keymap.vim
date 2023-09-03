
source ~/.config/nvim/disable_keymap.vim

" Control - O : find file with name."
nnoremap <A-o> <cmd>Telescope find_files<cr>
nnoremap <A-f> <cmd>Telescope live_grep<cr>

" Keymap for todo
nnoremap <A-c> :Telescope colorscheme<cr>
nnoremap ft :TodoTelescope <cr>
nnoremap tt i// TODO :<ESC> 

noremap ; :

" Tab Map
noremap <A-1> 1gt
noremap <A-2> 2gt
noremap <A-3> 3gt
noremap <A-4> 4gt
noremap <A-5> 5gt
noremap <A-6> 6gt
noremap <A-7> 7gt
noremap <A-8> 8gt
noremap <A-9> 9gt
noremap <A-t> :tabnew<CR>
noremap <A-w> :tabclose<CR>
noremap <A-h> :tabprevious<CR>
noremap <A-l> :tabnext<CR>

noremap gt :Telescope git_status<CR>
noremap go :Telescope git_commits<CR>
noremap ga :G add .<CR>
noremap gc :G commit<CR>
noremap gp :G push<CR>

