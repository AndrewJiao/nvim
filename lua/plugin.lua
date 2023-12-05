-- 文件格式
local file_type = require("plugin.file_type")
-- 目录树
local neo_tree = require("plugin.neo_tree")
-- 跳转插件
local flash = require("plugin.flash")
-- 文件搜索
local telescope = require("plugin.telescope")
-- 标签页
local bufferline = require("plugin.bufferline")

-- 注释
local comment = require("plugin.comment")
-- formatter
local formatter = require("plugin.formatter")

-- 主题

local theme = require("theme")

-- lazy插件管理器
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
    theme,
    flash,
    neo_tree,
    file_type,
    comment,
    formatter,
    telescope,
    bufferline
})
