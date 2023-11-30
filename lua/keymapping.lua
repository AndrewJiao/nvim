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



-- 在Normal模式下映射上下键  
map('n', '<C-k>','<Up>',  opts)  
map('n', '<C-j>','<Down>',  opts)  
map('n', '<C-K>','<Up>',  opts)  
map('n', '<C-J>','<Down>',  opts)  
--   
-- 在Insert模式下映射上下键  
map('i', '<C-k>','<Up>',  opts)  
map('i', '<C-j>','<Down>',  opts)  
map('i', '<C-l>','<Right>',  opts)  
map('i', '<C-h>','<Left>',  opts)  
map('i', '<C-K>','<Up>',  opts)  
map('i', '<C-J>','<Down>',  opts)  
map('i', '<C-L>','<Right>',  opts)  
map('i', '<C-H>','<Left>',  opts)  

return {opts = opts, map = map}
    
