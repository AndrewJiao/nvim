
local keymapping = require("../keymapping")
local map = keymapping.map
local opts = keymapping.opts


--基于comment插件注释 see :h coment.config 
map('n', '<M-c>', vim.cmd.UndotreeToggle)
map('n', '<M-x>', vim.cmd.UndotreeFocus)

local M = {
  "mbbill/undotree"
}


return M

