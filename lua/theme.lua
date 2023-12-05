-- vim.cmd.colorscheme("catppuccin")

-- default options:

-- local m = { "catppuccin/nvim", name = "catppuccin", priority = 1000 }

local m = {
    "rebelot/kanagawa.nvim",
    config = function()
        require('kanagawa').setup({
            -- compile = true,             -- enable compiling the colorscheme
            -- undercurl = true,            -- enable undercurls
            -- commentstyle = { italic = true },
            -- functionstyle = {},
            -- keywordstyle = { italic = true},
            -- statementstyle = { bold = true },
            -- typestyle = {},
            -- transparent = false,         -- do not set background color
            -- diminactive = false,         -- dim inactive window `:h hl-normalnc`
            -- terminalcolors = true,       -- define vim.g.terminal_color_{0,17}
            -- colors = {                   -- add/modify theme and palette colors
            --     palette = {},
            --     theme = { 
            --         wave = {
            --             syn = {
            --                 parameter = "blud"
            --             },
            --         }, 
            --         lotus = {
            --             syn = {
            --                 parameter = "blud"
            --             },
            --         }, 
            --         dragon = {
            --             syn = {
            --                 parameter = "blud"
            --             },
            --         }, 
            --         all = {
            --             ui = {
            --                 bg_gutter = "none"
            --             }
            --         } 
            --     },
            -- },
            -- overrides = function(colors) -- add/modify highlights
            --     return {}
            -- end,
            -- theme = "wave",              -- load "wave" theme when 'background' option is not set
            -- background = {               -- map the value of 'background' option to a theme
            --     dark = "wave",           -- try "dragon" !
            --     light = "latos"
            -- },
        })
    end

}


return m

