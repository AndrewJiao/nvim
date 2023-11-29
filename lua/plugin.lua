-- 文件格式
local file_type = {
    "nathom/filetype.nvim",
    lazy = true,
    event = "User FileOpened",
    config = function()
        require("filetype").setup({
            overrides = {
                extensions = {
                    h = "cpp",
                },
            }
        })
    end
}

--
local catppuccin = { "catppuccin/nvim", name = "catppuccin", priority = 1000 }

-- 目录树
local neo_tree = {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
      }
}

-- 跳转插件
local hop = {
  'phaazon/hop.nvim',
  branch = 'v2', -- optional but strongly recommended
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    require'hop'.setup {
        keys = 'etovxqpdygfblzhckisuran',
        case_insensitive = false,

    }
  end
}


-- 注释
local comment = {
    'numToStr/Comment.nvim',
    -- opts = {
    --   toggler = { line = 'gqa', block = 'andc' },
    --   opleader = { line = 'anda', block = 'andg' },
    -- },
    config = function()
        require('Comment').setup()
        local ft = require('Comment.ft')
        ft({'yaml'}, '#%s')
        ft({'javascript','json'}, {'//%s', '/*%s*/'})
        ft({'go', 'rust'}, ft.get('c'))
        ft({'toml', 'graphql'}, '#%s')

    end,
}

-- formatter
local formatter = {
    'mhartington/formatter.nvim',
    config = function()
        local file_type = {}

        -- 使用prettier格式化,可用类型参考
        local ft_names = {
            {"javascript","prettier"},
            {"javascriptreact","prettier"},
            {"typescript","prettier"},
            {"typescriptreact","prettier"},
            {"json","prettier"},
            {"lua","luafmt"},
        }
        for _, name_pattern in ipairs(ft_names) do
            local name = name_pattern[1]
            local pattern = name_pattern[2]

            if pattern == "prettier" then
                file_type[name] = {
                    -- 对应各自目录下的prettier
                    require("formatter.filetypes." .. name).prettier
                }
            elseif pattern == "luafmt" then
                file_type[name] = {
                    -- 对应各自目录下的prettier
                    require("formatter.filetypes." .. name).luafmt
                }
            end
        end
        -- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
        require("formatter").setup ({
            -- All formatter configurations are opt-in
            filetype = file_type
        })
    end
}




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
    catppuccin,
    neo_tree,
    file_type,
    hop,
    comment,
    formatter
})
