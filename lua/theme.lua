-- vim.cmd.colorscheme("catppuccin")

-- default options:

-- local m = { "catppuccin/nvim", name = "catppuccin", priority = 1000 }

-- local m = {
--     "rebelot/kanagawa.nvim",
--     config = function()
--         require('kanagawa').setup({
--         })
--     end
--
-- }

local m = {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}

return m

