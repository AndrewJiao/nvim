vim.api.nvim_create_autocmd({ 
    -- "InsertLeave",
    -- "TextChanged",
    "BufLeave",
    "BufWinLeave",
}, {
    pattern = { "*" },
    command = "silent! wall",
    nested = true,
})
