local keymapping = require("../keymapping")
local map = keymapping.map
local opts = keymapping.opts

local telescope = {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require('telescope.builtin')
            map('n', '<leader>ff', builtin.find_files, opts)
            map('n', '<leader>fg', builtin.live_grep, opts)
            map('n', '<leader>fb', builtin.buffers, opts)
            map('n', '<leader>fh', builtin.oldfiles, opts)
            map('n', '<leader>gb', builtin.git_branches, opts)
            map('n', '<leader>gh', builtin.git_bcommits, opts)


            -- theme
            -- local builtin = require('telescope.builtin')
            -- local themes = require('telescope.themes')
            -- builtin.find_files(themes.get_dropdown(opts))
            -- local builtin = require('telescope.builtin')
            -- local themes = require('telescope.themes')
            -- builtin.find_files(themes.get_cursor(opts))
        end,
}

return telescope
