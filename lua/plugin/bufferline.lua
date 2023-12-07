local keymapping = require("../keymapping")
local map = keymapping.map
local opts = keymapping.opts

--基于comment插件注释 see :h coment.config
map('n','<A-l>',':<C-U>BufferLineCycleNext<CR>',opts)
map('n','<A-h>',':<C-U>BufferLineCyclePrev<CR>',opts)
map('n','<C-S-F3>',':<C-U>BufferLineCloseOthers<CR>',opts)
map('n','<C-F4>',':<C-U>bd<CR>',opts)

local M = {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        vim.opt.termguicolors = true
        require("bufferline").setup{
            options = {
                mode = "buffer",
                number = "ordinal",
                -- 使用 nvim 内置lsp
                diagnostics = "nvim_lsp",
                -- 左侧让出 nvim-tree 的位置
                offsets = {{
                    filetype = "neo-tree",
                    text = "File Explorer",
                    highlight = "Directory",
                    text_align = "left"
                }}
            }
        }
    end

}


return M
