local keymapping = require("../keymapping")
local map = keymapping.map
local opts = keymapping.opts

--基于comment插件注释 see :h coment.config 
map('n','<A-l>',':<C-U>BufferLineCycleNext<CR>',opts)
map('n','<A-h>',':<C-U>BufferLineCyclePrev<CR>',opts)
map('n','<C-S-F3>',':<C-U>BufferLineCloseOthers<CR>',opts)
-- map('n','<C-F4>',':<C-U>BufferLineCloseOthers<CR>',opts)

local M = {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function() 
        vim.opt.termguicolors = true
        require("bufferline").setup{
            options = {
                mode = "buffer",
                number = "ordinal"
            }
        }
    end

}


return M
