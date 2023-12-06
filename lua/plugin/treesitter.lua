
local keymapping = require("../keymapping")
local map = keymapping.map
local opts = keymapping.opts


--基于comment插件注释 see :h coment.config
map('n','-','zc',opts)
map('n','+','zx',opts)

local M = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            -- 安装 language parser
            -- :TSInstallInfo 命令查看支持的语言
            ensure_installed ={"lua", "json", "xml" ,"properties"},
            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,
            -- Automatically install missing parsers when entering buffer
            -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
            auto_install = true,
            -- 启用代码高亮功能
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            },
            -- 启用增量选择
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = '<CR>',
                    node_incremental = '<CR>',
                    node_decremental = '<BS>',
                    scope_incremental = '<TAB>',
                }
            },
            -- 启用基于Treesitter的代码格式化(=) . NOTE: This is an experimental feature.
            indent = {
                enable = false
            }
        })
    end
}

vim.wo.foldmethod = "expr"  -- 代码折叠
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"  -- 依赖插件折叠
vim.wo.foldenable = false    -- 打开文件时是否折叠
vim.wo.foldlevel = 99        -- 折叠最小行数

return { M }
