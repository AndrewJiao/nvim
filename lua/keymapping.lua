-- 设置leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = { noremap = true, silent = true }

local map = vim.keymap.set

map("i", "jk", "<Esc>", opts)
map("i", "kj", "<Esc>", opts)
-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 左右Tab切换
-- map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opts)
-- map("n", "<C-l>", ":BufferLineCycleNext<CR>", opts)

-- 省略其他基础配置
--
--
--
-- 跳转hop插件配置
map('n', '<C-;>', ':HopPattern<CR>', opt)

-- 编辑
--复制当前行
map('n','yp','yyp',opt)
--基于comment插件注释 see :h coment.config 
map('n','<C-/>','<Plug>(comment_toggle_linewise_current)',opt)
map('n','<C-S-/>','<Plug>(comment_toggle_blockwise_current)',opts)
map('v','<C-/>','<Plug>(comment_toggle_linewise_visual)',opts)
map('v','<C-S-/>','<Plug>(comment_toggle_blockwise_visual)',opts)

-- 格式化
map('n','<leader>fm',':Format<CR>',opts)
map('n','<leader>Fm',':FormatWrite<CR>',opts)
map('v','<leader>fm',':<C-U>Format<CR>',opts)
map('v','<leader>Fm',':<C-U>FormatWrite<CR>',opts)
