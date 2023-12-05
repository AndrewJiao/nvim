vim.api.nvim_command([[  
  augroup my_autocmds  
    autocmd!  
    autocmd BufLeave * :w
  augroup END  
]])
